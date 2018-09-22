package com.project.hrproject.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.project.hrproject.dao.UserDao;
import com.project.hrproject.entity.UserModel;

public class UserDaoImpl implements UserDao {
private JdbcTemplate jdbcTemplate;
private NamedParameterJdbcTemplate template;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	 
	 @Autowired
	 private void setDataSource(DataSource dataSource)
	 {
		 this.jdbcTemplate=new JdbcTemplate(dataSource);
			this.template = new NamedParameterJdbcTemplate(dataSource);
	 }
	 
	 public int signup(UserModel user){
		 String sql = "insert into usertbl(username, password, name,name1,"
		 		+ "father, mother, spouse,permanentaddress,tempaddress, citizenshipno, phonenumber, "
		 		+ "email,dob,ageyr,agemth,ageday,lastpassedexam,passeddatebs,passeddatead,advertiseno,open_comp, mahila, adibasi, madhesi, dalit, apanga, pichadiyeko_chetra, citizenshipIssuedDistrict, citizenshipIssuedDate)"
		 		+ " values ('"+user.getUsername()+"', '"+user.getPassword()+"', '"+user.getName()+"', '"+user.getName1() +"','"+
		 		user.getFather()+"','"+user.getMother()+"','"+user.getSpouse()+"','"+
		 		user.getPermanentaddress()+"','"+user.getTempaddress()+"','"+user.getCitizenshipno()+"','"+user.getPhonenumber()+
		 		"','"+user.getEmail()+"','"+user.getDob()+"','"+user.getAgeyr()
		 		+"','"+user.getAgemth()+"','"+user.getAgeday()+"','"+user.getLastpassedexam()+"','"
		 		+user.getPasseddatebs()+"','"+user.getPasseddatead()+"','"+user.getAdvertiseno()+"','"+user.getOpen_comp()+"','"+user.getMahila()+"','"+user.getAdibasi()+"','"+user.getMadhesi()+"','"+user.getDalit()+"','"+user.getApanga()+"','"+user.getPichadiyeko_chetra()+"', '"+user.getCitizenshipIssuedDistrict()+"', '"+user.getCitizenshipIssuedDate()+"')";
		 return jdbcTemplate.update(sql);
	 }

	@Override
	public int update(UserModel user, String userid) {
		try {
		String sql = "update usertbl set username=:username, name=:name, name1=:name1, father=:father, mother=:mother, spouse=:spouse, permanentaddress=:permanentaddress, tempaddress=:tempaddress, citizenshipno=:citizenshipno, phonenumber=:phonenumber, email=:email, dob=:dob, ageyr=:ageyr, agemth=:agemth, ageday=:ageday, lastpassedexam=:lastpassedexam, passeddatebs=:passeddatebs, passeddatead=:passeddatead, advertiseno=:advertiseno, open_comp=:open_comp, mahila=:mahila, adibasi=:adibasi, madhesi=:madhesi, dalit=:dalit, apanga=:apanga, pichadiyeko_chetra=:pichadiyeko_chetra  where userid='"+userid+"'";
		return template.update(sql, new BeanPropertySqlParameterSource(user));
		}
		catch(Exception e) {
			System.out.println(e);
			return 0;
		}
	}

	@Override
	public String findMaxUserId() {
		String sql = "select max(userid) as userid from usertbl";
		return jdbcTemplate.queryForObject(sql, String.class);
	}

}
