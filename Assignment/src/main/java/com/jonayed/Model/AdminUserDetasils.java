package com.jonayed.Model;

public class AdminUserDetasils {

	private String name;
	private String email;
	private int age;
	private int phone;
	
	
	
	public AdminUserDetasils() {
		
	}
	
	public AdminUserDetasils(String name, String email, int age, int phone) {
		super();
		this.name = name;
		this.email = email;
		this.age = age;
		this.phone = phone;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "AdminUserDetasils [name=" + name + ", email=" + email + ", age=" + age + ", phone=" + phone + "]";
	}
	
	
}
