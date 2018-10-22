package com.project.hrproject.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.hrproject.dao.AdminDao;
import com.project.hrproject.entity.UserModel;
import com.project.hrproject.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao adminDao;

	@Override
	public List<UserModel> findAllApplicants() {
		return adminDao.findAllApplicants();
	}

	@Override
	public UserModel findApplicantById(String userid) {
		return adminDao.findApplicantById(userid);
	}

	@Override
	public int applicantactivate(String userid) {
		return adminDao.applicantactivate(userid);
	}

	@Override
	public int applicantdeactivate(String userid) {
		return adminDao.applicantdeactivate(userid);
	}
	
	

}
