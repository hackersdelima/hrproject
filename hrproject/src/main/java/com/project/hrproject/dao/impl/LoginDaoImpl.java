package com.project.hrproject.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.project.hrproject.dao.LoginDao;
import com.project.hrproject.entity.UserModel;

public class LoginDaoImpl implements LoginDao{
private JdbcTemplate jdbcTemplate;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	 
	 @Autowired
	 private void setDataSource(DataSource dataSource)
	 {
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
		 
	 }
	 
	 public boolean verifyUser(UserModel user)
		{
			
			boolean userexists=false;
			
			String sql="SELECT COUNT(*) FROM usertbl WHERE username='"+user.getUsername()+"' AND password='"+user.getPassword()+"'";
			System.out.println(sql);
			System.out.println(jdbcTemplate+"jdnds");
			int rowcount= jdbcTemplate.queryForObject(sql, Integer.class);
			if(rowcount==1){
				userexists=true;
			}
			return userexists;
		}
	 public UserModel getUserDetails(UserModel user){
			String sql="SELECT * FROM usertbl WHERE username='"+user.getUsername()+"' AND password='"+user.getPassword()+"'";
			return jdbcTemplate.queryForObject(sql, new ClassMapper());
		}
		

		public static final class ClassMapper implements RowMapper<UserModel>{

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel user=new UserModel();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setUserid(rs.getString("userid"));
				user.setStatus(rs.getString("status"));
				user.setAd_no(rs.getString("advertiseno"));
				
				return user;
			}
			
		}

}
