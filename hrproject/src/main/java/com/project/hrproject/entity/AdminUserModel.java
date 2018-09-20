package com.project.hrproject.entity;

public class AdminUserModel {
	private String id;
	private String username;
	private String password;
	private String staffCode;
	private String branchCode;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getStaffCode() {
		return staffCode;
	}
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	public String getBranchCode() {
		return branchCode;
	}
	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}
	@Override
	public String toString() {
		return "AdminUserModel [id=" + id + ", username=" + username + ", password=" + password + ", staffCode="
				+ staffCode + ", branchCode=" + branchCode + "]";
	}

}
