package com.jonayed.Model;

public class UserRegistratrion {
	private String firstName;
	private String lastName;
	private String address;
	private int phone;
	private String emai1;
	private String birthdate;
	private int age;
	private String password;
	
	
	public UserRegistratrion(String firstName, String lastName, String address, int phone, String emai1,
			String birthdate, int age, String password) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.phone = phone;
		this.emai1 = emai1;
		this.birthdate = birthdate;
		this.age = age;
		this.password = password;
	}
	
	


	public UserRegistratrion() {
		
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getPhone() {
		return phone;
	}


	public void setPhone(int phone) {
		this.phone = phone;
	}


	public String getEmai1() {
		return emai1;
	}


	public void setEmai1(String emai1) {
		this.emai1 = emai1;
	}


	public String getBirthdate() {
		return birthdate;
	}


	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "UserRegistratrion [firstName=" + firstName + ", lastName=" + lastName + ", address=" + address
				+ ", phone=" + phone + ", emai1=" + emai1 + ", birthdate=" + birthdate + ", age=" + age + ", password="
				+ password + "]";
	}
	
	
	
}
