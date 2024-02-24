package com.jut.entity;

public class Student {
	private int StudentId;
	private String StudentName;
	private String ContactNumber;
	private String Email;
	private String EnrollmentDate;
	private String StudentStatus;

	public Student(int studentId, String studentName, String contactNumber, String email, String enrollmentDate,
			String studentStatus) {
		super();
		StudentId = studentId;
		StudentName = studentName;
		ContactNumber = contactNumber;
		Email = email;
		EnrollmentDate = enrollmentDate;
		StudentStatus = studentStatus;
	}

	public Student() {
	}

	public int getStudentId() {
		return StudentId;
	}

	public void setStudentId(int studentId) {
		StudentId = studentId;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public String getContactNumber() {
		return ContactNumber;
	}

	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getEnrollmentDate() {
		return EnrollmentDate;
	}

	public void setEnrollmentDate(String enrollmentDate) {
		EnrollmentDate = enrollmentDate;
	}

	public String getStudentStatus() {
		return StudentStatus;
	}

	public void setStudentStatus(String studentStatus) {
		StudentStatus = studentStatus;
	}

}
