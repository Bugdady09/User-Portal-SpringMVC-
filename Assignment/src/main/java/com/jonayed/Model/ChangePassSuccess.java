package com.jonayed.Model;

public class ChangePassSuccess {
	private String email;
	private String OldPass;
	private String newPass;
	
	
	
	public ChangePassSuccess() {
		
	}

	

	public ChangePassSuccess(String email, String oldPass, String newPass) {
		super();
		this.email = email;
		OldPass = oldPass;
		this.newPass = newPass;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getOldPass() {
		return OldPass;
	}



	public void setOldPass(String oldPass) {
		OldPass = oldPass;
	}



	public String getNewPass() {
		return newPass;
	}



	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}



	@Override
	public String toString() {
		return "ChangePassSuccess [email=" + email + ", OldPass=" + OldPass + ", newPass=" + newPass + "]";
	}

	
	
	
	
}
