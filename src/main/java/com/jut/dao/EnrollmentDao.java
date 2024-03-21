package com.jut.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jut.entity.Enrollment;
import com.jut.entity.Student;

@Repository
public class EnrollmentDao {
       @Autowired
	JdbcTemplate template;

       public void addEnrollment(Enrollment enrollment) {
           System.out.println("Course ID: " + enrollment.getCourseId() + ", Enrollment Date: " + enrollment.getEnrollmentDate());

           String sql = "INSERT INTO enrollments (EnrollmentId, EnrollmentDate, StudentId, CourseId) VALUES (?, ?, ?, ?)";

           // Execute the SQL query with the java.util.Date object
           template.update(sql, enrollment.getEnrollmentId(), enrollment.getEnrollmentDate(), enrollment.getStudentId(), enrollment.getCourseId());
       }

	public List<Enrollment> enrollmentlist() {
		try {
			List<Enrollment> e = template.query("select* from enrollments ", new RowMapper<Enrollment>() {

				public Enrollment mapRow(ResultSet rs, int arg1) throws SQLException {

					return new Enrollment(rs.getInt(1), rs.getString(2), rs.getInt(1),rs.getInt(1));
				}

			});
			return e;

		} catch (Exception e) {

		}
		return null;
	}

	public boolean update(Enrollment enrollment) {
		try {
			Object[] argument = {enrollment.getEnrollmentDate(),enrollment.getStudentId(),enrollment.getCourseId(),enrollment.getEnrollmentId() };
			String result = "UPDATE enrollments SET  EnrollmentDate=?, StudentId=?, CourseId=? WHERE EnrollmentId=?";

			int a = template.update(result, argument);

			if (a == 1) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e2) {
			e2.printStackTrace();
			return false;
		}
	}

	public boolean delete(int enrollmentId) {
		try {
			Object[] argument = { enrollmentId };
			int a = template.update("delete from enrollments where enrollmentId=?", argument);
			if (a == 1) {
				return true;
			}
		} catch (Exception e) {

		}
		return false;
	}


}