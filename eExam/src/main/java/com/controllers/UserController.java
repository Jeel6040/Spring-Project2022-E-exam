package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String newUser(Model model) {
		model.addAttribute("role",roleDao.getAllRoles()); 
		return "NewUser";  
	}
	@PostMapping("/saveuser")
	public String saveUser(UserBean user) {
		userDao.addUser(user);
		return "redirect:/getallusers";
	}
	@GetMapping("/getallusers")
	public String getAllUsers(Model model) {
		List<UserBean> users = userDao.getAllUsers();//get all users from database 
		model.addAttribute("users", users);//send all users to jsp 
		return "ListUsers";//open jsp page ListUsers 
	}
	@GetMapping("/listusers")
	public String listUsers(Model model) {
		List<UserBean> users = userDao.getAllUsers();
		model.addAttribute("users", users);
		return "ListUsers";
	}
	@GetMapping("/deleteuser")
	public String deleteUser(@RequestParam("userId") int userId) {
		
		userDao.deleteUser(userId);
		return "redirect:/listusers";
	}

	@GetMapping("/edituser")
	public String editUser(@RequestParam("userId") int userId, Model model) {

		UserBean user = userDao.getUserById(userId);
		model.addAttribute("user", user);
		return "EditUser";
	}

	@PostMapping("/updateuser")
	public String updateUser(UserBean user) {
		userDao.updateUser(user);
		return "redirect:/listusers";
	}
}
