package com.jut.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jut.dao.TeacherDao;
import com.jut.entity.Teacher;

@Service
public class TeacherService {
	@Autowired
	private TeacherDao teacherdao;

	public boolean added(Teacher teacher) {
		return teacherdao.added(teacher);
	}

	public List<Teacher> list() {
		return teacherdao.list();
		
	}

	public boolean delete(int teacherId) {
		
		return teacherdao.delete(teacherId);
	}

	public boolean update(Teacher tracher) {
		
		return teacherdao.update(tracher);
	}


}
