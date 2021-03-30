package com.jonayed.Model;

public class UserLogIn {

	private String email;
	private String passward;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassward() {
		return passward;
	}
	public void setPassward(String passward) {
		this.passward = passward;
	}
	@Override
	public String toString() {
		return "UserLogIn [email=" + email + ", passward=" + passward + "]";
	}
	
	
}
