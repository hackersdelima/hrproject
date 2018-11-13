package com.project.hrproject.entity;

import java.util.Arrays;

public class UserModel {
	private String advertiseno, name,grandfathernep,fathernep,addressnep, name1,fname,mname,lname, father, mother, spouse, permanentaddress, tempaddress, citizenshipno,
			phonenumber, email, dob, ageyr, agemth, ageday, lastpassedexam, passeddatebs, passeddatead, userid, status,
			username, password;
	private int open_comp, mahila, adibasi, madhesi, dalit, apanga, pichadiyeko_chetra;
	private String citizenshipIssuedDistrict, citizenshipIssuedDate;
	private String grandfather;
	private byte[] image;
	
	public String getGrandfathernep() {
		return grandfathernep;
	}

	public void setGrandfathernep(String grandfathernep) {
		this.grandfathernep = grandfathernep;
	}

	public String getAddressnep() {
		return addressnep;
	}

	public void setAddressnep(String addressnep) {
		this.addressnep = addressnep;
	}

	public String getFathernep() {
		return fathernep;
	}

	public void setFathernep(String fathernep) {
		this.fathernep = fathernep;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getCitizenshipIssuedDistrict() {
		return citizenshipIssuedDistrict;
	}

	public void setCitizenshipIssuedDistrict(String citizenshipIssuedDistrict) {
		this.citizenshipIssuedDistrict = citizenshipIssuedDistrict;
	}

	public String getCitizenshipIssuedDate() {
		return citizenshipIssuedDate;
	}

	public void setCitizenshipIssuedDate(String citizenshipIssuedDate) {
		this.citizenshipIssuedDate = citizenshipIssuedDate;
	}

	public String getAdvertiseno() {
		return advertiseno;
	}

	public void setAdvertiseno(String advertiseno) {
		this.advertiseno = advertiseno;
	}

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

	public void setLastpassedexam(String lastpassedexam) {
		this.lastpassedexam = lastpassedexam;
	}

	public String getLastpassedexam() {
		return lastpassedexam;
	}

	public void setPasseddatebs(String passeddatebs) {
		this.passeddatebs = passeddatebs;
	}

	public String getPasseddatebs() {
		return passeddatebs;
	}

	public void setPasseddatead(String passeddatead) {
		this.passeddatead = passeddatead;
	}

	public String getPasseddatead() {
		return passeddatead;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDob() {
		return dob;
	}

	public void setAgeyr(String ageyr) {
		this.ageyr = ageyr;
	}

	public String getAgeyr() {
		return ageyr;
	}

	public void setAgemth(String agemth) {
		this.agemth = agemth;
	}

	public String getAgemth() {
		return agemth;
	}

	public void setAgeday(String ageday) {
		this.ageday = ageday;
	}

	public String getAgeday() {
		return ageday;
	}

	public int getOpen_comp() {
		return open_comp;
	}

	public void setOpen_comp(int open_comp) {
		this.open_comp = open_comp;
	}

	public int getMahila() {
		return mahila;
	}

	public void setMahila(int mahila) {
		this.mahila = mahila;
	}

	public int getAdibasi() {
		return adibasi;
	}

	public void setAdibasi(int adibasi) {
		this.adibasi = adibasi;
	}

	public int getMadhesi() {
		return madhesi;
	}

	public void setMadhesi(int madhesi) {
		this.madhesi = madhesi;
	}

	public int getDalit() {
		return dalit;
	}

	public void setDalit(int dalit) {
		this.dalit = dalit;
	}

	public int getApanga() {
		return apanga;
	}

	public void setApanga(int apanga) {
		this.apanga = apanga;
	}

	public int getPichadiyeko_chetra() {
		return pichadiyeko_chetra;
	}

	public void setPichadiyeko_chetra(int pichadiyeko_chetra) {
		this.pichadiyeko_chetra = pichadiyeko_chetra;
	}
	
	public String getGrandfather() {
		return grandfather;
	}

	public void setGrandfather(String grandfather) {
		this.grandfather = grandfather;
	}
	

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "UserModel [advertiseno=" + advertiseno + ", name=" + name + ",grandfathernep=" + grandfathernep + ",fathernep=" +fathernep + ",addressnep=" + addressnep +", name1=" + name1 + ", father=" + father
				+ ", mother=" + mother + ", spouse=" + spouse + ", permanentaddress=" + permanentaddress
				+ ", tempaddress=" + tempaddress + ", citizenshipno=" + citizenshipno + ", phonenumber=" + phonenumber
				+ ", email=" + email + ", dob=" + dob + ", ageyr=" + ageyr + ", agemth=" + agemth + ", ageday=" + ageday
				+ ", lastpassedexam=" + lastpassedexam + ", passeddatebs=" + passeddatebs + ", passeddatead="
				+ passeddatead + ", userid=" + userid + ", status=" + status + ", username=" + username + ", password="
				+ password + ", open_comp=" + open_comp + ", mahila=" + mahila + ", adibasi=" + adibasi + ", madhesi="
				+ madhesi + ", dalit=" + dalit + ", apanga=" + apanga + ", pichadiyeko_chetra=" + pichadiyeko_chetra
				+ ", citizenshipIssuedDistrict=" + citizenshipIssuedDistrict + ", citizenshipIssuedDate="
				+ citizenshipIssuedDate + ", grandfather=" + grandfather + ", image=" + Arrays.toString(image) + "]";
	}

}
