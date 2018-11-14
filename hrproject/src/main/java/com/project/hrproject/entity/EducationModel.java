package com.project.hrproject.entity;

import java.util.Arrays;

public class EducationModel {
	private String userid;
private String[] institute_name, exam_name,completion_year, totalmarks_percentage , major_sub;


public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public String[] getInstitute_name() {
	return institute_name;
}

public void setInstitute_name(String[] institute_name) {
	this.institute_name = institute_name;
}

public String[] getExam_name() {
	return exam_name;
}

public void setExam_name(String[] exam_name) {
	this.exam_name = exam_name;
}

public String[] getCompletion_year() {
	return completion_year;
}

public void setCompletion_year(String[] completion_year) {
	this.completion_year = completion_year;
}

public String[] getTotalmarks_percentage() {
	return totalmarks_percentage;
}

public void setTotalmarks_percentage(String[] totalmarks_percentage) {
	this.totalmarks_percentage = totalmarks_percentage;
}

public String[] getMajor_sub() {
	return major_sub;
}

public void setMajor_sub(String[] major_sub) {
	this.major_sub = major_sub;
}

@Override
public String toString() {
	return "EducationModel [userid=" + userid + ", institute_name=" + Arrays.toString(institute_name) + ", exam_name="
			+ Arrays.toString(exam_name) + ", completion_year=" + Arrays.toString(completion_year)
			+ ", totalmarks_percentage=" + Arrays.toString(totalmarks_percentage) + ", major_sub="
			+ Arrays.toString(major_sub) + "]";
}


}
