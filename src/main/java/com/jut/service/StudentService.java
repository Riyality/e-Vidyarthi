package com.jut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jut.dao.StudentDao;
import com.jut.entity.Enrollment;
import com.jut.entity.Student;
@Service
public class StudentService {
	@Autowired
	private StudentDao studentdto;

	public boolean add(Student student) {
		;
		return studentdto.add(student);
		
	}

	public List<Student> list() {
		
		return studentdto.list();
	}

	public boolean update(Student student) {
		
		return studentdto.update(student) ;
	}

	public boolean delete(int studentId) {
		
		return studentdto.delete(studentId) ;
	}

	public int getAllStudentIds(int studentId) {
		
		return studentdto.getAllStudentIds(studentId);
	}


	

}
