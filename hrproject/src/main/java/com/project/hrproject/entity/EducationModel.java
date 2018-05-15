package com.project.hrproject.entity;

import java.util.List;

public class EducationModel {
private List<String> institute_name,exam_name,completed_year,level,marks_obtained,main_subject,kaifiyat;

public List<String> getInstitute_name() {
	return institute_name;
}

public void setInstitute_name(List<String> institute_name) {
	this.institute_name = institute_name;
}

public List<String> getExam_name() {
	return exam_name;
}

public void setExam_name(List<String> exam_name) {
	this.exam_name = exam_name;
}

public List<String> getCompleted_year() {
	return completed_year;
}

public void setCompleted_year(List<String> completed_year) {
	this.completed_year = completed_year;
}

public List<String> getLevel() {
	return level;
}

public void setLevel(List<String> level) {
	this.level = level;
}

public List<String> getMarks_obtained() {
	return marks_obtained;
}

public void setMarks_obtained(List<String> marks_obtained) {
	this.marks_obtained = marks_obtained;
}

public List<String> getMain_subject() {
	return main_subject;
}

public void setMain_subject(List<String> main_subject) {
	this.main_subject = main_subject;
}

public List<String> getKaifiyat() {
	return kaifiyat;
}

public void setKaifiyat(List<String> kaifiyat) {
	this.kaifiyat = kaifiyat;
}
}
