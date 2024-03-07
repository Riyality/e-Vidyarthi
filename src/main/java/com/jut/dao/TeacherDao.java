package com.jut.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.jut.entity.Teacher;
@Repository
public class TeacherDao {
	@Autowired
	JdbcTemplate template;

	public boolean added(Teacher teacher) {

		Object[]argument = {teacher.getTeacherId(),teacher.getTeacherName(),teacher.getSubject(),teacher.getEmail(),teacher.getPhone_Number(),teacher.getAddress(),teacher.getDegree(),teacher.getSalary()};
		 int result=template.update("insert into teacher values(?,?,?,?,?,?,?,?)",argument);
		 System.out.println(result);
		return false;
	
		}

	public List<Teacher> list() {
		try {
			List<Teacher> t=template.query("select* from teacher",new RowMapper<Teacher>(){

				public Teacher mapRow(ResultSet tr, int arg1) throws SQLException {
					
					return new Teacher(tr.getInt(1),tr.getString(2),tr.getString(3),tr.getString(4),tr.getString(5),tr.getString(6),tr.getString(7),tr.getString(8));
				}
			});
			return t;
			} catch (Exception e) {
			
		}
		return null;

	}
	
	public boolean delete(int teacherId) {
			try{
				Object[]argument = {teacherId};
				int a=template.update("delete from teacher where teacherId=?",argument);
				if(a == 1){
					return true;
				}
			}catch(Exception e){
				
			}
		return false;
	}

	public boolean update(Teacher teacher) {
		
			try{
				Object[]argument = {teacher.getTeacherName(),teacher.getSubject(),teacher.getEmail(),teacher.getPhone_Number(),teacher.getAddress(),teacher.getDegree(),teacher.getSalary(),teacher.getTeacherId()};
				String result = "UPDATE teacher SET teacherName=?, subject=?, email=?, phone_Number=?, address=?,degree=?,salary=? WHERE teacherId=?";

				int a=template.update(result, argument);
				
				if(a==1){
					return true;
				}else{
					return false;
				}
			}catch(Exception e2){
			
		}


		return false;
	}

	
}
