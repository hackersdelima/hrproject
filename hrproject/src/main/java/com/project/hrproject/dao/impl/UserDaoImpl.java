package com.project.hrproject.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.UserModel;

public class UserDaoImpl implements UserDao {
private JdbcTemplate jdbcTemplate;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	 
	 @Autowired
	 private void setDataSource(DataSource dataSource)
	 {
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
		 
	 }
	 
	 public int signup(UserModel user){
		 String sql = "insert into usertbl(username, password, citizenshipno, phonenumber, email, name,name1, advertiseno) values ('"+user.getUsername()+"', '"+user.getPassword()+"','"+user.getCitizenshipno()+"', '"+user.getPhonenumber()+"', '"+user.getEmail()+"', '"+user.getName()+"', '"+user.getName1() +"','"+user.getAd_no()+"')";
		 return jdbcTemplate.update(sql);
	 }

}
