package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dao.UserDao;

@Controller
public class AdminController {
	
	@Autowired
	UserDao userDao;
	
	
	
	
}
