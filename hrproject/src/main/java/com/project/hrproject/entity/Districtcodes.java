package com.project.hrproject.entity;

public class Districtcodes {
	
	private String districtcode;
	private String districtname;
	public String getDistrictcode() {
		return districtcode;
	}
	public void setDistrictcode(String districtcode) {
		this.districtcode = districtcode;
	}
	public String getDistrictname() {
		return districtname;
	}
	public void setDistrictname(String districtname) {
		this.districtname = districtname;
	}
	@Override
	public String toString() {
		return "Districtcodes [districtcode=" + districtcode + ", districtname=" + districtname + "]";
	}
	
	

}
