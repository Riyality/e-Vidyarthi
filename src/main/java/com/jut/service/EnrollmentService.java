package com.jut.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jut.dao.EnrollmentDao;
import com.jut.dao.StudentDao;
import com.jut.entity.Enrollment;
import com.jut.entity.Student;

@Service
public class EnrollmentService {
     @Autowired
	EnrollmentDao enrollmentdao;
     @Autowired
 	private StudentDao studentdto;
	public List<Student> list() {
		
		return studentdto.list();
	}
	
	 public void addEnrollment(Enrollment enrollment) {
		 enrollmentdao.addEnrollment(enrollment);
	    }

	public List<Enrollment> Enrollmentlist() {
		
		 return enrollmentdao.enrollmentlist();
	}

	public boolean update(Enrollment enrollment) {
		return enrollmentdao.update(enrollment) ;
	}

	public boolean delete(int enrollmentId) {
		// TODO Auto-generated method stub
		return enrollmentdao.delete(  enrollmentId) ;
	}


	
	

}
