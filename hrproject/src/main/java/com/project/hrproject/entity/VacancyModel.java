package com.project.hrproject.entity;

public class VacancyModel {
private String id, advertiseno,posten,postnp,serviceen,servicenp,groupen,groupnp, date, regioncode;




public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getRegioncode() {
	return regioncode;
}

public void setRegioncode(String regioncode) {
	this.regioncode = regioncode;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public String getAdvertiseno() {
	return advertiseno;
}

public void setAdvertiseno(String advertiseno) {
	this.advertiseno = advertiseno;
}

public String getPosten() {
	return posten;
}

public void setPosten(String posten) {
	this.posten = posten;
}

public String getPostnp() {
	return postnp;
}

public void setPostnp(String postnp) {
	this.postnp = postnp;
}

public String getServiceen() {
	return serviceen;
}

public void setServiceen(String serviceen) {
	this.serviceen = serviceen;
}

public String getServicenp() {
	return servicenp;
}

public void setServicenp(String servicenp) {
	this.servicenp = servicenp;
}

public String getGroupen() {
	return groupen;
}

public void setGroupen(String groupen) {
	this.groupen = groupen;
}

public String getGroupnp() {
	return groupnp;
}

public void setGroupnp(String groupnp) {
	this.groupnp = groupnp;
}

@Override
public String toString() {
	return "VacancyModel [advertiseno=" + advertiseno + ", posten=" + posten + ", postnp=" + postnp + ", serviceen="
			+ serviceen + ", servicenp=" + servicenp + ", groupen=" + groupen + ", groupnp=" + groupnp + "]";
}


}
