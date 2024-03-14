package com.jut.entity;

public class Department {
	private int departmentID;
	private String departmentName;
	private String head_of_Department;
	private String department_Start;
	private int students;
	
	
	public Department() {
		super();
	}


	public Department(int departmentID, String departmentName, String head_of_Department, String department_Start,
			int students) {
		super();
		this.departmentID = departmentID;
		this.departmentName = departmentName;
		this.head_of_Department = head_of_Department;
		this.department_Start = department_Start;
		this.students = students;
	}


	public int getDepartmentID() {
		return departmentID;
	}


	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}


	public String getDepartmentName() {
		return departmentName;
	}


	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}


	public String getHead_of_Department() {
		return head_of_Department;
	}


	public void setHead_of_Department(String head_of_Department) {
		this.head_of_Department = head_of_Department;
	}


	public String getDepartment_Start() {
		return department_Start;
	}


	public void setDepartment_Start(String department_Start) {
		this.department_Start = department_Start;
	}


	public int getStudents() {
		return students;
	}


	public void setStudents(int students) {
		this.students = students;
	}
	
	
	}