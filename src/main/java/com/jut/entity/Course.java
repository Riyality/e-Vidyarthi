package com.jut.entity;

public class Course {
	private int courseId;
	private String courseName;
	private String instructor;
	private String cSchedule;
	private int capacity;
	
	public Course() {
		super();
	}

	public Course(int courseId, String courseName, String instructor, String cSchedule, int capacity) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.instructor = instructor;
		this.cSchedule = cSchedule;
		this.capacity = capacity;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getInstructor() {
		return instructor;
	}

	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}

	public String getcSchedule() {
		return cSchedule;
	}

	public void setcSchedule(String cSchedule) {
		this.cSchedule = cSchedule;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

}