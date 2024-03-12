package com.jut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jut.entity.Student;
import com.jut.entity.Teacher;
import com.jut.service.loginService;


@Controller
public class LoginController {
	@Autowired
	loginService loginservice;
	

	@RequestMapping("/")
	public String login(){
		return "login";
		
	}
	@RequestMapping("/login")
	public String Login(@RequestParam("username") String user,@RequestParam("password") String password,Model model){
		
			boolean b=loginservice.login(user,password);
			if(b==true)
			{
				 int numberOfStudents=loginservice.getnumberOfStudents();
		          model.addAttribute("numberOfStudents",numberOfStudents);
             
		          
		          int numberOfTeacher=loginservice.getnumberOfTeacher();
		          model.addAttribute("numberOfTeacher",numberOfTeacher);
		          
		          
		      	List<Student> list1 = loginservice.list();
				model.addAttribute("studentList", list1);
		  		
		  		
		  		
				return "index";
			}
			else{
				return "login";
			}
}
}
