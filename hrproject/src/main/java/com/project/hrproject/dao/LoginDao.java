package com.project.hrproject.dao;

import com.project.hrproject.entity.AdminUserModel;
import com.project.hrproject.entity.UserModel;

public interface LoginDao {
	 public boolean verifyUser(UserModel user);
	 public UserModel getUserDetails(UserModel user);
	public AdminUserModel findAdminUser(AdminUserModel adminUserModel);

}
