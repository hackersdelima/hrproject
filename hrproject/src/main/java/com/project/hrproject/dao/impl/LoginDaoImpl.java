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
				user.setUserid(rs.getString("userid"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setName1(rs.getString("name1"));
				user.setFather(rs.getString("father"));
				user.setMother(rs.getString("mother"));
				user.setSpouse(rs.getString("spouse"));
				user.setPermanentaddress(rs.getString("permanentaddress"));
				user.setTempaddress(rs.getString("tempaddress"));
				user.setCitizenshipno(rs.getString("citizenshipno"));
				user.setPhonenumber(rs.getString("phonenumber"));
				user.setEmail(rs.getString("email"));
				user.setDob(rs.getString("dob"));
				user.setAgeyr(rs.getString("ageyr"));
				user.setAgemth(rs.getString("agemth"));
				user.setAgeday(rs.getString("ageday"));
				user.setLastpassedexam(rs.getString("lastpassedexam"));
				user.setPasseddatebs(rs.getString("passeddatebs"));
				user.setPasseddatead(rs.getString("passeddatead"));
				user.setStatus(rs.getString("status"));
				user.setAdvertiseno(rs.getString("advertiseno"));
				user.setOpen_comp(rs.getInt("open_comp"));
				user.setMahila(rs.getInt("mahila"));
				user.setAdibasi(rs.getInt("adibasi"));
				user.setMadhesi(rs.getInt("madhesi"));
				user.setDalit(rs.getInt("dalit"));
				user.setApanga(rs.getInt("apanga"));
				user.setPichadiyeko_chetra(rs.getInt("pichadiyeko_chetra"));
				
				return user;
			}
			
		}

}
