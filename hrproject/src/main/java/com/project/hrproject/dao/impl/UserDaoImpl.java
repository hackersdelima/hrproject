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
		 String sql = "insert into usertbl(username, password, name,name1,"
		 		+ "father, mother, spouse,permanentaddress,tempaddress, citizenshipno, phonenumber, "
		 		+ "email,dob,ageyr,agemth,ageday,lastpassedexam,passeddatebs,passeddatead,advertiseno,open_comp, mahila, adibasi, madhesi, dalit, apanga, pichadiyeko_chetra)"
		 		+ " values ('"+user.getUsername()+"', '"+user.getPassword()+"', '"+user.getName()+"', '"+user.getName1() +"','"+
		 		user.getFather()+"','"+user.getMother()+"','"+user.getSpouse()+"','"+
		 		user.getPermanentaddress()+"','"+user.getTempaddress()+"','"+user.getCitizenshipno()+"','"+user.getPhonenumber()+
		 		"','"+user.getEmail()+"','"+user.getDob()+"','"+user.getAgeyr()
		 		+"','"+user.getAgemth()+"','"+user.getAgeday()+"','"+user.getLastpassedexam()+"','"
		 		+user.getPasseddatebs()+"','"+user.getPasseddatead()+"','"+user.getAdvertiseno()+"','"+user.getOpen_comp()+"','"+user.getMahila()+"','"+user.getAdibasi()+"','"+user.getMadhesi()+"','"+user.getDalit()+"','"+user.getApanga()+"','"+user.getPichadiyeko_chetra()+"')";
		 return jdbcTemplate.update(sql);
	 }

}
