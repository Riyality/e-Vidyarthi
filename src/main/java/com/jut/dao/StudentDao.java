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
public class StudentDao {
	@Autowired
	JdbcTemplate template;

	public boolean add(Student student) {
	Object[]argument = {student.getStudentId(),student.getStudentName(),student.getContactNumber(),student.getEmail(),student.getEnrollmentDate(),student.getAddress(),student.getGender(),student.getDob(),student.getHighestQualification(),student.getMarks()};
	 int result=template.update("insert into student values(?,?,?,?,?,?,?,?,?,?)",argument);
	 System.out.println(result);
	return false;

		
		
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



	public boolean update(Student student) {
		try{
			Object[]argument = {student.getStudentName(),student.getContactNumber(),student.getEmail(),student.getEnrollmentDate(),student.getAddress(),student.getGender(),student.getDob(),student.getHighestQualification(),student.getMarks(),student.getStudentId()};
			String result = "UPDATE student SET StudentName=?, ContactNumber=?, Email=?, EnrollmentDate=?, Address=?,Gender=?,Dob=?,HighestQualification=?,Marks=? WHERE StudentId=?";

			int a=template.update(result, argument);
			
			if(a==1){
				return true;
			}else{
				return false;
			}
		}catch(Exception e2){
			e2.printStackTrace();
			return false;
		}
		
	}




	public boolean delete(int studentId) {
		try{
			Object[]argument = {studentId};
			int a=template.update("delete from student where studentId=?",argument);
			if(a == 1){
				return true;
			}
		}catch(Exception e){
			
		}
		return false;
	}

}
