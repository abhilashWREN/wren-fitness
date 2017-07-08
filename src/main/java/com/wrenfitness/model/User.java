package com.wrenfitness.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.NotEmpty;

@Entity()
@Table(name="accounts")
public class User implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="AccountID")
	private Integer id;

	@NotEmpty
	@Column(name="Username",nullable=false)
	private String userName;
	
	@NotEmpty
	@Column(name="Password", nullable=false)
	private String password;
	
	@Transient
	private String confirmPassword;
	
	@Transient
	private Integer roleID;
	
	@NotEmpty
	@Column(name="Email", nullable=false)
	private String email;
	
	@ManyToMany(targetEntity = Role.class, cascade = { CascadeType.MERGE })
	@JoinTable(name = "userroles", 
			joinColumns = { @JoinColumn(name = "AccountID") }, 
			inverseJoinColumns = { @JoinColumn(name = "RoleID") })
	private List<Role> userRoles = new ArrayList<Role>();
	
	@OneToMany(mappedBy="user")
	@Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE,org.hibernate.annotations.CascadeType.DELETE})
	private List<UserProfile> userProfile = new ArrayList<UserProfile>();
	
	@OneToMany(mappedBy="eventUser",fetch = FetchType.LAZY)
	@Cascade({org.hibernate.annotations.CascadeType.SAVE_UPDATE,org.hibernate.annotations.CascadeType.DELETE})
	private List<UserEvent> events = new ArrayList<UserEvent>();
	
	@ManyToMany(targetEntity = UserEvent.class, cascade = { CascadeType.MERGE })
	@JoinTable(name = "userevents", 
			joinColumns = { @JoinColumn(name = "AccountID") }, 
			inverseJoinColumns = { @JoinColumn(name = "EventID") })
	private List<UserEvent> userRegisterEvents = new ArrayList<UserEvent>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public List<Role> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<Role> userRoles) {
		this.userRoles = userRoles;
	}
	
	public List<UserProfile> getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(List<UserProfile> userProfile) {
		this.userProfile = userProfile;
	}
	
	public Integer getRoleID() {
		return roleID;
	}

	public void setRoleID(Integer roleID) {
		this.roleID = roleID;
	}

	public List<UserEvent> getEvents() {
		return events;
	}

	public void setEvents(List<UserEvent> events) {
		this.events = events;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof User))
			return false;
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	public List<UserEvent> getUserRegisterEvents() {
		return userRegisterEvents;
	}

	public void setUserRegisterEvents(List<UserEvent> userRegisterEvents) {
		this.userRegisterEvents = userRegisterEvents;
	}


	/*
	 * DO-NOT-INCLUDE passwords in toString function.
	 * It is done here just for convenience purpose.
	 */
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password
				+ ", email=" + email + "]";
	}


	
}
