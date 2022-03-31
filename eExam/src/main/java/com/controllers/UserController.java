package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.RoleDao;
import com.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	@Autowired
	RoleDao roleDao;
	
	@GetMapping("/newuser")
	public String newUser() {
		return "NewUser";
	}
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		userDao.addUser(user);
		return "redirect:/getallusers";
	}
	@GetMapping("/getallusers")
	public String getAllUsers(Model model) {
		List<UserBean> users = userDao.getAllUsers();
		model.addAttribute("users", users);
		return "ListUsers";
	}
}
