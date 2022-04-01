package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		userExamAnsDao.adduserans(userexamans);
		return "redirect:/getalluserexamans";
	}
	@GetMapping("/getalluserexamans")
	public String getAllUserExamAns(Model model) {
		List<UserExamAnsBean> userexamans = userExamAnsDao.getAllUserExamAns();
		model.addAttribute("userexamans", userexamans);
		return "ListUserExamAns";
	}
	@GetMapping("/listuserexamans")
	public String listUserExamAns(Model model) {
		List<UserExamAnsBean> userexamans = userExamAnsDao.getAllUserExamAns();
		model.addAttribute("userexamans", userexamans); 
		return "ListUserExamAns";
	}
	
	@GetMapping("/deleteuserexamans/{userExamAnsId}")
	public String deleteUserExamAns(@RequestParam("userExamAnsId") int userExamAnsId) {
		
		userExamAnsDao.deleteUserExamAns(userExamAnsId);
		return "redirect:/listuserexamans";
	}

	@GetMapping("/edituserexamans")
	public String editUserExamAns(@RequestParam("userExamAnsId") int userExamAnsId, Model model) {

		UserExamAnsBean userexamans = userExamAnsDao.getUserExamAnsById(userExamAnsId);
		model.addAttribute("userexamans", userexamans);
		return "EditUserExamAns";
	}

	@PostMapping("/updateuserexamans")
	public String updateUserExamAns(UserExamAnsBean userexamans) {
		userExamAnsDao.updateUserExamAns(userexamans);
		return "redirect:/listuserexamans";
	}
}
