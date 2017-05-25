package com.wrenfitness.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ROLE")
public class Role implements Serializable{

	private Set<UserRole> userRoles = new HashSet<UserRole>();
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="RoleID")
	private Integer roleID;	

	@Column(name="Description", length=15, unique=true, nullable=false)
	private String type = RoleType.USER.getRoleType();
	
	public Integer getId() {
		return roleID;
	}

	public void setId(Integer id) {
		this.roleID = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@OneToMany(mappedBy="roles")
	public Set<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((roleID == null) ? 0 : roleID.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (!(obj instanceof Role))
			return false;
		Role other = (Role) obj;
		if (roleID == null) {
			if (other.roleID != null)
				return false;
		} else if (!roleID.equals(other.roleID))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Role [id=" + roleID + ", type=" + type + "]";
	}




}
