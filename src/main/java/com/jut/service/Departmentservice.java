package com.jut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jut.dao.DepartmentDao;
import com.jut.entity.Department;


@Service
public class Departmentservice {
	@Autowired
	private  DepartmentDao departmentdto;
    public List<Department> list() {
		
		return departmentdto.list();
	}

	public boolean add(Department department) {
	
		return departmentdto.add(department);
	}

	public boolean update(Department department) {
	
		return departmentdto.update(department) ;
	}

	public boolean delete(int departmentID) {
	
		return departmentdto.delete(departmentID);
	}


}
