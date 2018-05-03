package com.project.hrproject.entity;

public class UserModel {
	private String name, userid, status,username, password, citizenshipno, phonenumber, email;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

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

	public String getCitizenshipno() {
		return citizenshipno;
	}

	public void setCitizenshipno(String citizenshipno) {
		this.citizenshipno = citizenshipno;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserModel [name=" + name + ", userid=" + userid + ", status=" + status + ", username=" + username
				+ ", password=" + password + ", citizenshipno=" + citizenshipno + ", phonenumber=" + phonenumber
				+ ", email=" + email + "]";
	}

	
	

}
