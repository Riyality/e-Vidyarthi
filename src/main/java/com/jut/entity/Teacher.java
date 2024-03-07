package com.jut.entity;

public class Teacher {
	private int teacherId;
    private String teacherName;
    private String subject;
    private String email;
    private String phone_Number;
    private String address;
    private String degree;
    private String salary;
    
	public Teacher() {
		super();
	}

	public Teacher(int teacherId, String teacherName, String subject, String email, String phone_Number, String address,
			String degree, String salary) {
		super();
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.subject = subject;
		this.email = email;
		this.phone_Number = phone_Number;
		this.address = address;
		this.degree = degree;
		this.salary = salary;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_Number() {
		return phone_Number;
	}

	public void setPhone_Number(String phone_Number) {
		this.phone_Number = phone_Number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	
    
}
