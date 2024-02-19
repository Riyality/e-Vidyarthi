package com.jut.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jut.dao.loginDao;

@Service
public class loginService {
   @Autowired
	loginDao logindao;
   public boolean login(String user, String password) {
		
		return logindao.login(user,password);
		
	}


}
