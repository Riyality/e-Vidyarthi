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

	@RequestMapping("/course_add")
	public String course(@ModelAttribute Course model) {
		courseservice.Course(model);
		return "redirect:/course_list";
	}

	@RequestMapping("/course_list")
	public String Allcourse(Model model) {
		List<Course> list1 = courseservice.Allcourse();
		model.addAttribute("courselist", list1);
		return "course/courselist";
	}
	
	@RequestMapping("/course-delete")
	public String deletecourse(@RequestParam int courseId, Model model ){
		boolean isDeleted=courseservice.deletecourse(courseId);
		if(isDeleted){
			model.addAttribute("successMsg","Course deleted Successfully");
		}
		else{
			model.addAttribute("errorMsg","Course deleted Successfully");
		}
		return "redirect:/course_list";

	}
	
	@RequestMapping("/course-updated")
	public String updates() {
		return "course/update";

	}
	
	
	@RequestMapping("/update-Course")
	public String updates(@ModelAttribute Course course, Model model){
		
	boolean isAdded=courseservice.updatecourse(course);
	model.addAttribute("update",course);
	
	return "redirect:/course_list";

	}
	}
