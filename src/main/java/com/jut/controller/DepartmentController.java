   package com.jut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jut.entity.Department;
import com.jut.service.Departmentservice;
@Controller
public class DepartmentController {
  @Autowired
    private Departmentservice departmentservice;
  
	@RequestMapping(value ="add-department")
	public String department() {
		return "department/add";

	}
	
@RequestMapping(value = "/department")
	public String add(@ModelAttribute  Department Department, Model model) {
		boolean isAdd =departmentservice.add(Department);
		if (isAdd) {
			model.addAttribute("msgsuss", "Successfully Added");

		} else {
			model.addAttribute("error", "Not Added");
		}
		return "redirect:/department_list";
}

@RequestMapping("/department_list")
public String list(Model model) {
	List< Department> list1 = departmentservice.list();
	model.addAttribute("departmentlist", list1);

	return "department/list1";

}

@RequestMapping("departmentupdate")
public String update() {
	return "department/edit1";

}

@RequestMapping("/updatedepartment")
public String update(@ModelAttribute Department Department, Model model) {
	
		boolean isAdd =departmentservice.update(Department);
		if (isAdd) {
			model.addAttribute("msgsuss", " Update Successfully ");

		} else {
			model.addAttribute("error", "Not Update");
		}
		return "redirect:/department_list";

	}

@RequestMapping("/departmentdelete")
public String delete(@RequestParam int departmentID, Model model) {
	{
		boolean isDelete =departmentservice.delete(departmentID);
		if (isDelete) {
			model.addAttribute("msgsuss", " Delete Successfully ");

		} else {
			model.addAttribute("error", "Not Delete");

		}
		return "redirect:/department_list";

	}

}

}
