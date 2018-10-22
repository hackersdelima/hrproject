package com.project.hrproject.dao;

import java.util.List;

import com.project.hrproject.entity.UserModel;

public interface AdminDao {

	public List<UserModel> findAllApplicants();

	public UserModel findApplicantById(String userid);

	public int applicantactivate(String userid);

	public int applicantdeactivate(String userid);

}
