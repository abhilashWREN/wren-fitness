package com.wrenfitness.controller;

import java.sql.Date;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.wrenfitness.model.Role;
import com.wrenfitness.model.User;
import com.wrenfitness.model.UserEvent;
import com.wrenfitness.forms.UserEventForm;
import com.wrenfitness.model.UserProfile;
import com.wrenfitness.security.CustomUserDetailsService;
import com.wrenfitness.service.UserEventService;
import com.wrenfitness.service.UserProfileService;
import com.wrenfitness.service.UserService;
import com.wrenfitness.utility.DateUtils;
import com.wrenfitness.utility.UserRoles;


@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

	static final Logger logger = LoggerFactory.getLogger(AppController.class);
	
	@Autowired
	UserService userService;
	
	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Autowired
	UserEventService userEventService;
	
	
	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String listUsers(ModelMap model) {
		return "home";
	}
	
	/**
	 * This method will list all existing users.
	 */
	@RequestMapping(value = { "/redirect" }, method = RequestMethod.GET)
	public String redirectBasedOnRole(ModelMap model) {
		if(getPrincipalAuthority().contains("USER")) {
			logger.info("redirecting to role USER page");
		return "redirect:/trainee/"; 
		}
		else if(getPrincipalAuthority().contains("TRAINER")){
			logger.info("redirecting to role TRAINER page");
			return "redirect:/trainer/";
		}
		return "redirect:/";
	}

	/**
	 * This method will provide the medium to add a new user.
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.GET)
	public String newUser(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("loggedinuser", getPrincipal());
		return "register";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * saving user in database. It also validates the user input
	 */
	@RequestMapping(value = { "/newuser" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result,
			ModelMap model) {

		if (result.hasErrors()) {
			return "register";
		}

		/*
		 * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation 
		 * and applying it on field [sso] of Model class [User].
		 * 
		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
		 * framework as well while still using internationalized messages.
		 * 
		 */
		if(!userService.isUserNameUnique(user.getId(), user.getUserName())){
			FieldError ssoError =new FieldError("user","userName",messageSource.getMessage("non.unique.ssoId", new String[]{user.getUserName()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "register";
		}
		
		List<Role> userRoles = new ArrayList<Role>();
		Role userRole = new Role();
		userRole.setId(user.getRoleID());
		if(user.getRoleID() == 2){
		userRole.setType(UserRoles.USER.value());
		}
		else if(user.getRoleID() == 3){
			userRole.setType(UserRoles.TRAINER.value());
		}
		
		userRoles.add(userRole);
		user.setUserRoles(userRoles);
		
		List<UserProfile> userProfiles = new ArrayList<UserProfile>();
		UserProfile userProfile = new UserProfile();
		userProfile.setUser(user);
		userProfile.setFirstName(user.getUserProfile().get(0).getFirstName());
		userProfile.setLastName(user.getUserProfile().get(0).getLastName());
		userProfile.setCity(user.getUserProfile().get(0).getCity());
		userProfile.setContactNumber(user.getUserProfile().get(0).getContactNumber());
		userProfiles.add(userProfile);
		
		user.setUserProfile(userProfiles);
		
		userService.saveUser(user);

		//model.addAttribute("success", "User " + user.getUserProfile().getFirstName() + " "+ user.getUserProfile().getLastName() + " registered successfully");
		model.addAttribute("loggedinuser", getPrincipal());
		//return "success";
		
		if(user.getRoleID() == 2){
			return "redirect:/trainee/";
			}
			else if(user.getRoleID() == 3){
				return "redirect:/trainer/";
			}
		
		return "redirect:/";
	}

	@RequestMapping(value = { "/trainee/" }, method = RequestMethod.GET)
	public String traineeHomePage(ModelMap model) {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findByUserName(getPrincipal());
		List<User> trainers = userService.findAllTrainers();
		logger.info("Trainers : {}", trainers);
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("trainers", trainers);
		return "trainee/home_trainee";
	}
	
	@RequestMapping(value = { "/trainer/" }, method = RequestMethod.GET)
	public String trainerHomePage(ModelMap model) {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findByUserName(getPrincipal());
		
		List<UserEvent> userEvents = new ArrayList<UserEvent>();
		
		if(user.getEvents().size() > 0){
			userEvents = user.getEvents();
		}
		
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("events", userEvents);
		return "/trainer/home_trainer";
	}

	@RequestMapping(value = { "/trainer/addEvent" }, method = RequestMethod.POST)
	public String scheduleTrainerEvent(@Valid @ModelAttribute ("userEventForm")UserEventForm userEventForm ,BindingResult result,ModelMap model) throws ParseException {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findByUserName(getPrincipal());
		
		List<UserEvent> userEvents = new ArrayList<UserEvent>();
		
		if(user.getEvents().size() > 0){
		userEvents = user.getEvents();
		}
		
		UserEvent userEvent = new UserEvent();
		
		userEvent.setEventUser(user);
		userEvent.setTitle(userEventForm.getTitle());
		if(userEventForm.getAllDay() != null){
		if(userEventForm.getAllDay().equals("allDayEvent")){
			userEvent.setAllDay("true");
		}
		}	
		userEvent.setStartDate(DateUtils.JSDateToJavaDate(userEventForm.getStartDate()));
		if(userEventForm.getEndDate() != null)
		{
			userEvent.setEndDate(DateUtils.JSDateToJavaDate(userEventForm.getEndDate()));
		}
		if(userEventForm.getRepeatID() != null) 
		{
			userEvent.setRepeatID(userEventForm.getRepeatID());
		}
		if(userEventForm.getUrl() != null)
		{
			userEvent.setUrl(userEventForm.getUrl());
		}
		if(userEventForm.getAddress() !=null){
			
			userEvent.setAddress(userEventForm.getAddress());
		}
		
		if(userEventForm.getCapacity() !=null){
			
			userEvent.setMaxCapacity(userEventForm.getCapacity());
			userEvent.setCurrCapacity(0);
		}
		
		userEvents.add(userEvent);
		
		user.setEvents(userEvents);
		
		userService.updateUser(user);
		
		model.addAttribute("events", user.getEvents());
		return "/trainer/home_trainer";
	}

	
	@RequestMapping(value = "/trainer/viewprofile", method = RequestMethod.GET)
	public String  viewTrainerProfile(ModelMap model) {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findByUserName(getPrincipal());
		
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("user", user);
		return "/trainer/viewprofile_trainer";
	}
	
	@RequestMapping(value = "/trainee/viewprofile", method = RequestMethod.GET)
	public String  viewTraineeProfile(ModelMap model) {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findByUserName(getPrincipal());
		
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("user", user);
		return "/trainee/viewprofile_trainee";
	}
	
	@RequestMapping(value = "/trainee/viewTrainers", method = RequestMethod.GET)
	public String  viewTrainerSchedule(@RequestParam(value = "aid") int accountID,ModelMap model) {
		logger.info("user name : {}", getPrincipal());
		User user = userService.findById(accountID);
		
		List<UserEvent> userEvents = new ArrayList<UserEvent>();
		
		if(user.getEvents().size() > 0){
		userEvents = user.getEvents();
		}
		
		System.out.println("Registered Event: " +userService.findAllRegisterTraining(getPrincipal()));
		model.addAttribute("registerEvent", userService.findAllRegisterTraining(getPrincipal()));
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("events", userEvents);
		return "/trainee/view_trainer_schedule";
	}
	
	@RequestMapping(value = "/trainee/registerEvent", method = RequestMethod.POST)
	public String  registerEvent(@RequestParam(value = "eventId") int eventId,
			ModelMap model) {
		String userName = getPrincipal();
		logger.info("user name : {}", userName);
		userService.registerToEvent(userName, eventId);
		
		UserEvent event = userEventService.findById(eventId);
		User user = event.getEventUser();
		List<UserEvent> userEvents = new ArrayList<UserEvent>();
		
		if(user.getEvents().size() > 0){
		userEvents = user.getEvents();
		}
		
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("events", userEvents);
		model.addAttribute("registerEvent",userService.findAllRegisterTraining(getPrincipal()));
		return "/trainee/view_trainer_schedule";
	}
	
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		return "accessDenied";
	}

	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPageGET(ModelMap model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	model.addAttribute("loggedinuser", getPrincipal());
	    	return "redirect:/redirect";  
	    }
	}
	
	/**
	 * This method handles login GET requests.
	 * If users is already logged-in and tries to goto login page again, will be redirected to list page.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPagePOST(ModelMap model) {
		if (isCurrentAuthenticationAnonymous()) {
			return "login";
	    } else {
	    	model.addAttribute("loggedinuser", getPrincipal());
	    	return "redirect:/redirect";  
	    }
	}

	/**
	 * This method handles logout requests.
	 * Toggle the handlers if you are RememberMe functionality is useless in your app.
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){    
			//new SecurityContextLogoutHandler().logout(request, response, auth);
			persistentTokenBasedRememberMeServices.logout(request, response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}

	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	/**
	 * This method returns the principal[user-name] of logged-in user.
	 */
	private String getPrincipalAuthority(){
		return SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString();
	}
	
	/**
	 * This method returns true if users is already authenticated [logged-in], else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
	    final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    return authenticationTrustResolver.isAnonymous(authentication);
	}

	/*private Date getRepeatedEventID(Date startDate) {
		
	}*/

}