package com.project.hrproject.entity;

public class ApplicantsModel {
	
	private String username;
	private String password;
	private String title;
	private String firstname;
	private String middlename;
	private String lastname;
	private String email;
	private String advertiseno;
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getAdvertiseno() {
		return advertiseno;
	}
	public void setAdvertiseno(String advertiseno) {
		this.advertiseno = advertiseno;
	}
	@Override
	public String toString() {
		return "ApplicantsModel [username=" + username + ", password=" + password + ", title=" + title + ", firstname="
				+ firstname + ", middlename=" + middlename + ", lastname=" + lastname + ", email=" + email
				+ ", advertiseno=" + advertiseno + "]";
	}
	
}
