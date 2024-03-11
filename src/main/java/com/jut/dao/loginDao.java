package com.jut.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jut.entity.Student;

@Repository
public class loginDao {
	@Autowired
	JdbcTemplate template;

	public boolean login(String user, String password) {

		Integer r = template.queryForObject("select count(*) from login where username=? and password=?", Integer.class,
				user, password);
		System.out.println(r);

		if (r == 1) {

			return true;
		} else {
			return false;
		}

	}

	
	public int numberOfStudents() {
		 return template.queryForObject("SELECT COUNT(*) FROM student", Integer.class);
	}
	
	public List<Student> list() {
		try {
			List<Student> s=template.query("select* from student ",new RowMapper<Student>(){

				public Student mapRow(ResultSet rs, int arg1) throws SQLException {
					
					return  new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
				}
				
			});
			return s;

		
		
			} catch (Exception e) {
			
		}
		return null;

	}


	

	public int numberOfTeacher() {
		 return template.queryForObject("SELECT COUNT(*) FROM teacher", Integer.class);
	}
}
