package com.jut.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jut.entity.Course;
@Repository
public class CourseDao {
	
	@Autowired
	JdbcTemplate template;
	public void SCourse(Course c) {
		Object [] arg ={c.getCourseId(),c.getCourseName(),c.getInstructor(),c.getcSchedule(),c.getCapacity()};
		int a = template.update("insert into course values(?,?,?,?,?)",arg);
		System.out.println(a);
		
	}


		public List<Course> Allcourse() {
			try {
				List<Course> c=template.query("select * from course ",new RowMapper<Course>(){
					public Course mapRow(ResultSet rs, int arg1) throws SQLException {
						
						return  new Course(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
					}
				});
				return c;
			
				} catch (Exception e) {
				// TODO: handle exception
			}
		return null;
	}




		public boolean deletecourse(int courseId) {
			try{
				Object[] args={courseId};
				int result=template.update("delete from  course  where courseId=?",args);
				if(result==1){
					return true;
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
			return false;
		}


		public boolean updatecourse(Course course) {
			try{
			Object [] argument={course.getCourseName(),course.getInstructor(),course.getcSchedule(),course.getCapacity(),course.getCourseId()};
			int result=template.update("update  course set CourseName=?,Instructor=?,CSchedule=?,Capacity=? where CourseId=? ",argument);
			System.out.println(result);
			
			if(result==1){
				return true;
			}
			else{
				return false;
			}
			}
			catch(Exception e){
			e.printStackTrace();
			return false;
			}
		}
		
		


		
}


			

	
	
