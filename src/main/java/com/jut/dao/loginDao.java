package com.jut.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class loginDao {
	@Autowired
	JdbcTemplate template;

	public boolean login(String user, String password) {
		//Object [] args={user,password};
		//System.out.println(user);
		Integer r=template.queryForObject("select count(*) from login where username=? and password=?",Integer.class,user,password);
		System.out.println(r);
		
		if(r==1){
			
			return true;
		}
		else{
			return false;
		}
		
	}

}
