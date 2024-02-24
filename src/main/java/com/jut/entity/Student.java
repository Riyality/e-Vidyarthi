package com.jut.entity;

public class Student {
	private int StudentId;
	private String StudentName;
	private String ContactNumber;
	private String Email;
	private String EnrollmentDate;
	private String Address;
	private String Gender;
	private String Dob;
	private String HighestQualification;
	private int Marks;
	public Student(int studentId, String studentName, String contactNumber, String email, String enrollmentDate,
			String address, String gender, String dob, String highestQualification, int marks) {
		super();
		StudentId = studentId;
		StudentName = studentName;
		ContactNumber = contactNumber;
		Email = email;
		EnrollmentDate = enrollmentDate;
		Address = address;
		Gender = gender;
		Dob = dob;
		HighestQualification = highestQualification;
		Marks = marks;
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
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDob() {
		return Dob;
	}
	public void setDob(String dob) {
		Dob = dob;
	}
	public String getHighestQualification() {
		return HighestQualification;
	}
	public void setHighestQualification(String highestQualification) {
		HighestQualification = highestQualification;
	}
	public int getMarks() {
		return Marks;
	}
	public void setMarks(int marks) {
		Marks = marks;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
