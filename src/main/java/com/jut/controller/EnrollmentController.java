package com.jut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jut.entity.Course;
import com.jut.entity.Enrollment;
import com.jut.entity.Student;
import com.jut.service.CourseService;
import com.jut.service.EnrollmentService;
import com.jut.service.StudentService;
@Controller
public class EnrollmentController {
	@Autowired
	EnrollmentService enrollmentservice;
	@Autowired
	private StudentService studentservice;
	@Autowired
	CourseService courseservice;
	@RequestMapping("enrollment-form")   
	    public String enrollment(Model model) {
	        List<Student> studentList = studentservice.list();
	        model.addAttribute("studentList", studentList);
	        
	        List<Course> list1 = courseservice.Allcourse();
			model.addAttribute("courselist", list1);
			
	        System.out.println("StudentList:" + studentList);
	        return "enrollment/add";
	    }
	
	 

	 @RequestMapping(value = "/enrollment-add", method = RequestMethod.POST)
	    public String addEnrollment(@ModelAttribute Enrollment enrollment) {
		 enrollmentservice.addEnrollment(enrollment);
	        return "redirect:/enrollment-list"; 
	    }

	 @RequestMapping("/enrollment-list")
		public String list(Model model) {
			List<Enrollment> list = enrollmentservice.Enrollmentlist();
			model.addAttribute("enrollmentlist", list);

			return "enrollment/all";

		}
	 @RequestMapping("enrollmentupdate")
		public String update() {
			return "enrollment/edit";

		}

		@RequestMapping("/enrollment")
		public String update(@ModelAttribute Enrollment enrollment, Model model) {
			{
				boolean isAdd = enrollmentservice.update(enrollment);
				if (isAdd) {
					model.addAttribute("msgsuss", " Update Successfully ");

				} else {
					model.addAttribute("error", "Not Update");
				}
				return "redirect:/enrollment-list";

			}

		}
		
		@RequestMapping("/enrolldelete")
		public String delete(@RequestParam int enrollmentId, Model model) {
			{
				boolean isDelete = enrollmentservice.delete( enrollmentId);
				if (isDelete) {
					model.addAttribute("msgsuss", " Delete Successfully ");

				} else {
					model.addAttribute("error", "Not Delete");
		
				}
				return "redirect:/enrollment-list";

			}

		}
	
}
