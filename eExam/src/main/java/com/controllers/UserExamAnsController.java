package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserExamAnsBean;
import com.dao.UserExamAnsDao;

@Controller
public class UserExamAnsController {
	
	@Autowired
	UserExamAnsDao userExamAnsDao;
	
	@GetMapping("/userexamans")
	public String newUserExamAns() {
		return "NewUserExamAns";
	}
	@PostMapping("/saveuserexamans")
	public String saveUserExamAns(UserExamAnsBean userexamans) {
		userExamAnsDao.adduserexamans(userexamans);
		return "redirect:/getallusereaxmans";
	}
}
