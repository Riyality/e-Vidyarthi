package com.jut.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jut.entity.Department;



@Repository
public class DepartmentDao {
	@Autowired
	JdbcTemplate template;

	public boolean add(Department department) {
		Object[] argument = { department.getDepartmentID(), department.getDepartmentName(),department.getHead_of_Department(), department.getDepartment_Start(), department.getStudents()};
		int result = template.update("insert into department values(?,?,?,?,?)", argument);
		System.out.println(result);
		return false;
	}

	public List<Department> list() {
		try {
			List<Department> s=template.query("select* from department ",new RowMapper<Department>(){

				public Department mapRow(ResultSet rs, int arg1) throws SQLException {
					
					return  new Department(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
				}
				
			});
			return s;

		
		
			} catch (Exception e) {
			
		}
	
     return null;
	}
	
	public boolean update(Department department) {
		try{
			Object[]argument = {department.getDepartmentName(),department.getHead_of_Department(),department.getDepartment_Start(),department.getStudents(),department.getDepartmentID()};
			String result = "UPDATE department SET DepartmentName=?, Head_of_Department=?, Department_Start=?, Students=? WHERE DepartmentID=?";

			int a=template.update(result,argument);
			
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

	public boolean delete(int departmentID) {
		
		try{
			Object[]argument = {departmentID};
			int a=template.update("delete from department  where departmentID=?",argument);
			if(a == 1){
				return true;
			}
		}catch(Exception e){
			
		}
	
		return false;
	}




	
}
	
