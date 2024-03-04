package com.jut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jut.entity.Course;
import com.jut.service.CourseService;

@Controller

public class CourseController {

	@Autowired
	CourseService courseservice;

	@RequestMapping("course-form")
	public String course() {
		return "course/add";
	}

	@RequestMapping("/add")
	public String course(@ModelAttribute Course c) {
		courseservice.Course(c);
		return "course/add";
	}

	@RequestMapping("/course_list")
	public String Allcourse(Model c) {
		List<Course> list1 = courseservice.Allcourse();
		c.addAttribute("courselist", list1);
		return "course/courselist";
	}
	
	@RequestMapping("course/delete")
	public String deletecourse(@RequestParam int courseId, Model c ){
		boolean isDeleted=courseservice.deletecourse(courseId);
		if(isDeleted){
			c.addAttribute("successMsg","Course deleted Successfully");
		}
		else{
			c.addAttribute("errorMsg","Course deleted Successfully");
		}
		return "redirect:/course_list";

	}
	
	@RequestMapping("updated")
	public String updates() {
		return "course/update";

	}
	
	
	@RequestMapping("/updateCourse")
	public String updates(@ModelAttribute Course course, Model c){
		
	boolean isAdded=courseservice.updatecourse(course);
	c.addAttribute("update",course);
	
	return "redirect:/course_list";

	}
	}
