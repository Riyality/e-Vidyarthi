package com.jut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jut.dao.loginDao;
import com.jut.entity.Student;
import com.jut.entity.Teacher;

@Service
public class loginService {
   @Autowired
	loginDao logindao;
   public boolean login(String user, String password) {
		
		return logindao.login(user,password);
		
	}
   public int getnumberOfStudents() {
		 return logindao.numberOfStudents();
	}


	

	public int getnumberOfTeacher() {
		return logindao.numberOfTeacher();
	}
	public List<Student> list() {
		return logindao.list();
	}
}
