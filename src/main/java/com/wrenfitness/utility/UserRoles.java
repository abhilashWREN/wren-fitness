package com.wrenfitness.utility;

public enum UserRoles {
 ADMIN("ADMIN"),
 USER("USER"),
 TRAINER("TRAINER");
	
	private String value;
	
	UserRoles(String value) {
		this.value = value;
	}
	
	public String value() {
		return value;
	}
}
