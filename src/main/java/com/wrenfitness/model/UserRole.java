package com.wrenfitness.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

public class UserRole implements Serializable{

	private User user;
	private Role role;
	
	@Column(name="AccountID")
	private Integer accountID;	

	@Column(name="RoleID")
	private Integer roleID;

	public Integer getRoleID() {
		return roleID;
	}

	public void setRoleID(Integer roleID) {
		this.roleID = roleID;
	}
	
	public Integer getAccountID() {
		return accountID;
	}

	public void setAccountID(Integer accountID) {
		this.accountID = accountID;
	}
	
	@ManyToOne
	@JoinColumn(name = "AccountID")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	@ManyToOne
	@JoinColumn(name = "RoleID")
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((roleID == null) ? 0 : roleID.hashCode());
		result = prime * result + ((accountID == null) ? 0 : accountID.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if(roleID == null)
			return false;
		UserRole userRole = (UserRole)obj;
		if(roleID != userRole.getRoleID() || accountID != userRole.getAccountID())
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Role [id=" + roleID + ", Account ID =" + accountID + "]";
	}




}

