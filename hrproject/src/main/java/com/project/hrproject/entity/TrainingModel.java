package com.project.hrproject.entity;

import java.util.List;

public class TrainingModel {
private List<String> institute_name,certificate_name,training_year,training_period,training_subject;

public List<String> getInstitute_name() {
	return institute_name;
}

public void setInstitute_name(List<String> institute_name) {
	this.institute_name = institute_name;
}

public List<String> getCertificate_name() {
	return certificate_name;
}

public void setCertificate_name(List<String> certificate_name) {
	this.certificate_name = certificate_name;
}

public List<String> getTraining_year() {
	return training_year;
}

public void setTraining_year(List<String> training_year) {
	this.training_year = training_year;
}

public List<String> getTraining_period() {
	return training_period;
}

public void setTraining_period(List<String> training_period) {
	this.training_period = training_period;
}

public List<String> getTraining_subject() {
	return training_subject;
}

public void setTraining_subject(List<String> training_subject) {
	this.training_subject = training_subject;
}

@Override
public String toString() {
	return "TrainingModel [institute_name=" + institute_name + ", certificate_name=" + certificate_name
			+ ", training_year=" + training_year + ", training_period=" + training_period + ", training_subject="
			+ training_subject + "]";
}

}
