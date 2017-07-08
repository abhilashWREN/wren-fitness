package com.wrenfitness.model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import com.wrenfitness.utility.DateUtils;

@Entity
@Table(name="events")
public class UserEvent {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="EventID")
	private Integer id;
	
	@Column(name="RepeatID")
	private Integer repeatID;
	
	@NotEmpty
	@Column(name="Title",nullable=false)
	private String title;
	
	@Column(name="AllDay")
	private String allDay;
	
	@Column(name="Start")
	private Timestamp startDate;
	
	@Column(name="End")
	private Timestamp endDate;
	
	@Column(name="CurrCapacity")
	private Integer currCapacity;
	
	@Column(name="MaxCapacity")
	private Integer maxCapacity;
	
	@Column(name="Url")
	private String url;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="AccountID", nullable=true)
	private User eventUser;
	
	@Column(name="Address",nullable=true)
	private String address;
	
	@ManyToMany(targetEntity = User.class, cascade = { CascadeType.MERGE })
	@JoinTable(name = "userevents", 
			joinColumns = { @JoinColumn(name = "EventID") }, 
			inverseJoinColumns = { @JoinColumn(name = "AccountID") })
	private List<User> userRegisterEvents = new ArrayList<User>();

	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRepeatID() {
		return repeatID;
	}

	public void setRepeatID(Integer repeatID) {
		this.repeatID = repeatID;
	}

	public User getEventUser() {
		return eventUser;
	}

	public void setEventUser(User eventUser) {
		this.eventUser = eventUser;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAllDay() {
		return allDay;
	}

	public void setAllDay(String allDay) {
		this.allDay = allDay;
	}

	public Timestamp getStartDate() throws Exception {
		return DateUtils.convertTimeStampToViewableFormat(startDate);
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() throws Exception {
		return DateUtils.convertTimeStampToViewableFormat(endDate);
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	public Integer getCurrCapacity() {
		return currCapacity;
	}

	public void setCurrCapacity(Integer currCapacity) {
		this.currCapacity = currCapacity;
	}

	public Integer getMaxCapacity() {
		return maxCapacity;
	}

	public void setMaxCapacity(Integer maxCapacity) {
		this.maxCapacity = maxCapacity;
	}

	public User getUser() {
		return eventUser;
	}

	public void setUser(User user) {
		this.eventUser = user;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof UserEvent))
			return false;
		UserEvent other = (UserEvent) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public List<User> getUserRegisterEvents() {
		return userRegisterEvents;
	}

	public void setUserRegisterEvents(List<User> userRegisterEvents) {
		this.userRegisterEvents = userRegisterEvents;
	}
	
}
