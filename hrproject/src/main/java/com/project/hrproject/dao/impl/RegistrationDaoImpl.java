package com.project.hrproject.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.project.hrproject.dao.RegistrationDao;
import com.project.hrproject.entity.RegistrationModel;
import com.project.hrproject.entity.RegistrationNextModel;

public class RegistrationDaoImpl implements RegistrationDao {
private JdbcTemplate jdbcTemplate;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	 
	 @Autowired
	 private void setDataSource(DataSource dataSource)
	 {
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
		 
	 }
	 
	 public int register(RegistrationModel rm, RegistrationNextModel rnm){
		 String query = "";
		return jdbcTemplate.update(query);
	 }
	 public String imageUploadLocation(){
		 String query="select description from general_settings where name='image_upload_location'";
		 return jdbcTemplate.queryForObject(query, String.class);
	 }
}
