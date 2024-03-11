package com.jut.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.jut.entity.Teacher;
import com.jut.service.TeacherService;

@Controller
public class TeacherController {
	@Autowired
	private TeacherService teacherservice;

	@RequestMapping(value = "teacher-form")
	public String teacher() {
		return "teacher/add";
	}

	@RequestMapping(value = "/teacher")
	public String added(@ModelAttribute Teacher teacher, Model model) {
		boolean isAdd = teacherservice.added(teacher);
		if (isAdd) {
			model.addAttribute("msgsuss", "Successfully Added");

		} else {
			model.addAttribute("error", "Not Added");
		}
		return "redirect:/view_teacher";
	}

	@RequestMapping(value = "/view_teacher")
	public String list(Model model) {
		List<Teacher> list = teacherservice.list();
		model.addAttribute("teacherList", list);
		return "teacher/list";
	}

	@RequestMapping("teacher_update")
	public String update() {
		return "teacher/teacher_Edit";

	}

	@RequestMapping("/updateTeacher")
	public String update(@ModelAttribute Teacher tracher, Model model) {
		{
			boolean isAdd = teacherservice.update(tracher);
			if (isAdd) {
				model.addAttribute("msgsuss", " Update Successfully ");

			} else {
				model.addAttribute("error", "Not Update");
			}
			return "redirect:/view_teacher";

		}

	}

	@RequestMapping("/teacher_delete")
	public String delete(@RequestParam int teacherId, Model model) {
		{
			boolean isDelete = teacherservice.delete(teacherId);
			if (isDelete) {
				model.addAttribute("msgsuss", " Delete Successfully ");

			} else {
				model.addAttribute("error", "Not Delete");
			}
			return "redirect:/view_teacher";

		}
	}

}
