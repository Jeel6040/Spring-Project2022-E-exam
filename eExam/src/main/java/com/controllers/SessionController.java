package com.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.UserBean;
import com.dao.RoleDao;
import com.dao.UserDao;
import com.service.EmailService;

@Controller
public class SessionController {
	
	//login getmapping 
	//authenticate postmapping 
	
	@Autowired
	UserDao userDao;
	@Autowired
	EmailService emailService;
	@Autowired
	RoleDao roleDao;
	
//	@RequestMapping(value = "signup", method = RequestMethod.GET)
//	public String signup() {
//		System.out.println("signup");
//		return "Signup";
//	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login2() {
		return "redirect:/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "Login";// Login.jsp
	}
	@PostMapping("/login")
	public String authenticate(UserBean user, Model model, HttpSession session) {
		
		boolean isCorrect=false;
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());
		if (dbUser != null) {
			
			isCorrect = true;
			session.setAttribute("user", dbUser);
		}
		if (isCorrect == true) {
			if (dbUser.getRoleId() == 1) {
				//Admin Login
				return "redirect:/admindashboard";
			} else if (dbUser.getRoleId() == 2) {
				//Student Login
				return "redirect:/studentdashboard";
			} else {
				return "NoRole";
			}
		} else {
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		}
		
	}
	@RequestMapping(value = "forgetpassword", method = RequestMethod.GET)
	public String forgetPassword() {
		return "ForgetPassword";

	}

	@PostMapping("/forgetpassword")
	public String forgetPassword(UserBean user, Model model, HttpSession session) {
		UserBean dbUser = userDao.getUserByEmail(user.getEmail());

		if (dbUser == null) {
			model.addAttribute("error", "Please Enter Valid Email");
			return "ForgetPassword";

		} else {
			int otp = (int) (Math.random() * 1000000); // 0325842.15621 * 1000000
			session.setAttribute("otp", otp);
			session.setAttribute("email", user.getEmail());
			model.addAttribute("msg", "Otp is generated and sent to your email!!!");
			System.out.println("your otp is => " + otp);
			/// send email to user
			emailService.sendEmailForForgetPassword(user.getEmail(), otp+"");
			return "NewPassword";
		}

	}
//	@RequestMapping(value = "signup" , method = RequestMethod.POST)
	@GetMapping("/signup")
	public String newUser(Model model) {
		model.addAttribute("role",roleDao.getAllRoles());		
		return "Signup";
	}
	@PostMapping("/updatepassword")
	public String updatePassword(UserBean user, Model model, HttpSession session) {
		int otp = (int) session.getAttribute("otp");
		String email = (String) session.getAttribute("email");
		

		if (otp == user.getOtp() && email.equalsIgnoreCase(user.getEmail())) {

			userDao.updatePassword(user);
			model.addAttribute("msg", "Password Modified Please Login");
			
			return "Login";
		} else {
			model.addAttribute("error", "Your data doesn't match with our Records!!!");
			
			return "NewPassword";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/login";
	}
	@PostMapping("/savesignup")
	public String saveSignup(UserBean user) {
		userDao.addUser(user);
		return "redirect:/login";
	}
	@GetMapping("/admindashboard")
	public String adminDashboard() {
		return "AdminDashboard";
	}
	@GetMapping("/studentdashboard")
	public String studentDashboard() {
		return "StudentDashboard";
	}
}
