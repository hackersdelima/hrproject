package com.project.hrproject.entity;

public class UserModel {
	private String ad_no, name,name1, father, mother, spouse,permanentaddress,tempaddress, userid, status,username, password, citizenshipno, phonenumber, email;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
public String getName1() {
	return name1;
}
public void setName1(String name1) {
	this.name1 = name1;
}
public void setFather(String father) {
	this.father = father;
}
public String getFather() {
	return father;
}
public void setMother(String mother) {
	this.mother = mother;
}
public String getMother() {
	return mother;
}
public void setSpouse(String spouse) {
	this.spouse = spouse;
}
public String getSpouse() {
	return spouse;
}
public void setPermanentaddress(String permanentaddress) {
	this.permanentaddress = permanentaddress;
}
public String getPermanentaddress() {
	return permanentaddress;
}
public void setTempaddress(String tempaddress) {
	this.tempaddress = tempaddress;
}
public String getTempaddress() {
	return tempaddress;
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

	public String getAd_no() {
		return ad_no;
	}

	public void setAd_no(String ad_no) {
		this.ad_no = ad_no;
	}

	@Override
	public String toString() {
		return "UserModel [ad_no=" + ad_no + ", name=" + name + ",name1=" + name1 + ", userid=" + userid + ", status=" + status
				+ ", username=" + username + ", password=" + password + ", citizenshipno=" + citizenshipno
				+ ", phonenumber=" + phonenumber + ", email=" + email + "]";
	}

	

	
	

}
