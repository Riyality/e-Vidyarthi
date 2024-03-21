package com.jut.entity;

import java.util.Date;

public class Enrollment {
    private int EnrollmentId;
    private String EnrollmentDate;
    private int StudentId;
    private int CourseId;
	public Enrollment(int enrollmentId, String enrollmentDate, int studentId, int courseId) {
		super();
		EnrollmentId = enrollmentId;
		EnrollmentDate = enrollmentDate;
		StudentId = studentId;
		CourseId = courseId;
	}
	public Enrollment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getEnrollmentId() {
		return EnrollmentId;
	}
	public void setEnrollmentId(int enrollmentId) {
		EnrollmentId = enrollmentId;
	}
	public String getEnrollmentDate() {
		return EnrollmentDate;
	}
	public void setEnrollmentDate(String enrollmentDate) {
		EnrollmentDate = enrollmentDate;
	}
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}
	

  
}
