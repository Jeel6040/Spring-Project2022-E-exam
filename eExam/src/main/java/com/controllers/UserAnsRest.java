package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bean.UserExamAnsBean;
import com.dao.UserExamAnsDao;

@RestController
public class UserAnsRest {

	@Autowired
	UserExamAnsDao userExamAnsDao;

//	@PostMapping("/saveuserexamans",c)
//	@RequestMapping(value = "/saveuserexamans",method = RequestMethod.GET,produces = "application/json")
	@RequestMapping(value = "/saveuserexamans", method = RequestMethod.POST, produces = "application/json")
	public String saveUserExamAns(UserExamAnsBean userexamans) {
//		userExamAnsDao.adduserans(userexamans);
		System.out.println("======");
//		System.out.println(userexamans.size());
		System.out.println(userexamans);
		System.out.println(userexamans.getUserAns());
		userExamAnsDao.adduserans(userexamans);
		System.out.println("====");
		return "done";

	}
}
