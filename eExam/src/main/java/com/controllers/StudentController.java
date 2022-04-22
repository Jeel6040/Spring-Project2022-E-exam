package com.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.UserBean;
import com.dao.StudentDao;
import com.dao.UserDao;

@Controller
public class StudentController {
	
	@Autowired
	StudentDao studentDao;
	@Autowired
	UserDao userDao;
	
	
	@GetMapping("/studentprofile")
	public String studentProfile(@RequestParam("userId") int userId,Model model,HttpSession session) {
		UserBean user = userDao.getUserById(userId);
		model.addAttribute("user", user);
		session.setAttribute("user", user);
		return "StudentProfile";
	}
	
	@PostMapping("/updatestudentprofile")
	public String updateUser(UserBean user) {
		userDao.updateUser(user);
		return "redirect:/studentprofile";
	}

}
