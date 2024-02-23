package com.jut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jut.entity.Student;
import com.jut.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentservice;

	@RequestMapping(value = "student-form")
	public String student() {
		return "student/add";

	}

	@RequestMapping(value = "/student")
	public String add(@ModelAttribute Student student, Model model) {
		boolean isAdd = studentservice.add(student);
		if (isAdd) {
			model.addAttribute("msgsuss", "Successfully Added");

		} else {
			model.addAttribute("error", "Not Added");
		}
		return "student/add";

	}

	@RequestMapping("/list")
	public String list(Model model) {
		List<Student> list1 = studentservice.list();
		model.addAttribute("studentList", list1);

		return "student/list";

	}

	@RequestMapping("update")
	public String update() {
		return "student/edit";

	}

	@RequestMapping("/updateStudent")
	public String update(@ModelAttribute Student student, Model model) {
		{
			boolean isAdd = studentservice.update(student);
			if (isAdd) {
				model.addAttribute("msgsuss", " Update Successfully ");

			} else {
				model.addAttribute("error", "Not Update");
			}
			return "redirect:/list";

		}

	}
	@RequestMapping("/delete")
	public String delete(@RequestParam int studentId, Model model) {
		{
			boolean isDelete = studentservice.delete(studentId);
			if (isDelete) {
				model.addAttribute("msgsuss", " Delete Successfully ");

			} else {
				model.addAttribute("error", "Not Delete");
			}
			return "redirect:/list";

		}

	}
	
}
