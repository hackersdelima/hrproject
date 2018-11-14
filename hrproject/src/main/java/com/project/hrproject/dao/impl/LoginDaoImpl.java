package com.project.hrproject.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.project.hrproject.dao.LoginDao;
import com.project.hrproject.entity.AdminUserModel;
import com.project.hrproject.entity.UserModel;

public class LoginDaoImpl implements LoginDao{
	private NamedParameterJdbcTemplate namedParamterJdbcTemplate;
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		 this.namedParamterJdbcTemplate = new NamedParameterJdbcTemplate(jdbcTemplate);
	}

	@Autowired
	public void setDataSource(DataSource dataSource){
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
		
	}
	
	@Override
	public AdminUserModel findAdminUser(AdminUserModel adminUserModel) {
		System.out.println(adminUserModel);
		String sql = "select id, staffCode, username, branchCode, regioncode from adminusertbl where username = :username and password = :password";
		AdminUserModel user = namedParamterJdbcTemplate.queryForObject(sql, new BeanPropertySqlParameterSource(adminUserModel),new BeanPropertyRowMapper<AdminUserModel>(AdminUserModel.class));
		return user;
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
			String sql="SELECT * FROM usertbl WHERE username=:username AND password=:password";
			return namedParamterJdbcTemplate.queryForObject(sql, new BeanPropertySqlParameterSource(user),new BeanPropertyRowMapper<UserModel>(UserModel.class));
		}
		

		public static final class ClassMapper implements RowMapper<UserModel>{

			@Override
			public UserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserModel user=new UserModel();
				user.setUserid(rs.getString("userid"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setFirstname(rs.getString("firstname"));
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
				user.setOpen_comp(rs.getString("open_comp"));
				user.setMahila(rs.getString("mahila"));
				user.setAdibasi(rs.getString("adibasi"));
				user.setMadhesi(rs.getString("madhesi"));
				user.setDalit(rs.getString("dalit"));
				user.setApanga(rs.getString("apanga"));
				user.setPichadiyeko_chetra(rs.getString("pichadiyeko_chetra"));
				
				return user;
			}
			
		}


		

}
