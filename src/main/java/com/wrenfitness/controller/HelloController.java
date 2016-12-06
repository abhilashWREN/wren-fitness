package com.wrenfitness.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wrenfitness.dao.userDAO;
import com.wrenfitness.domain.User;

import java.util.Map;


@Controller
@RequestMapping("/")
public class HelloController {
	
	@Autowired
	private userDAO userDAO;

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String helloWorld(ModelMap model) {
		User user = userDAO.getUser(1);
		model.addAttribute("userName",user.getUserName());
		return "SaiRam";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		return "home";
	}
	
}
