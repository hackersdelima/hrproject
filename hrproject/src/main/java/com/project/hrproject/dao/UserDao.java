package com.project.hrproject.dao;

import com.project.hrproject.entity.UserModel;

public interface UserDao {
	public int signup(UserModel user);

	public int update(UserModel user, String userid);

	public String findMaxUserId();

}
