package com.jut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jut.dao.CourseDao;
import com.jut.entity.Course;


@Service
public class CourseService {
	
	@Autowired
 CourseDao coursedao;
	

	public void Course(Course c) {
		coursedao.SCourse(c);
		
	}

	public List<Course> Allcourse() {
		return coursedao.Allcourse();
	}

	public boolean deletecourse(int courseId) {
		return coursedao.deletecourse(courseId);
	}

	public boolean updatecourse(Course course) {
		
		return coursedao.updatecourse(course);
	}



}
