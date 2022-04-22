package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.RoleBean;
import com.dao.RoleDao;
import com.dao.UserDao;

@Controller
public class AdminController {
	
	@Autowired
	UserDao userDao;
	@Autowired
	RoleDao roleDao;
	
	@GetMapping("/profile")
	public String profile(@RequestParam("userId") int userId,Model model) {
		model.addAttribute("u", userDao.getUserById(userId));
		List<RoleBean> role = roleDao.getAllRoles();
		model.addAttribute("role", role);	
		
	return "Profile";
	}
	
	
}
