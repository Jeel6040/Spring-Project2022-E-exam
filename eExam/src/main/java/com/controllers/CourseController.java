package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.CourseBean;
import com.bean.RoleBean;
import com.dao.CourseDao;

@Controller
public class CourseController {
	
	@Autowired
	CourseDao courseDao;
	
	@GetMapping("/newcourse")
	public String newCourse() {
		return "NewCourse";
	}
	@PostMapping("/savecourse")
	public String saveCourse(CourseBean course) {
		courseDao.addCourse(course);
		return "redirect:/getallcourse";
	}
	@GetMapping("/listcourse")
	public String listCourse(Model model) {
		List<CourseBean> course = courseDao.getAllCourse();
		model.addAttribute("course", course);
		return "ListCourse";
	}
	@GetMapping("/deletecourse/{courseId}")
	public String deleteCourse(@PathVariable("courseId") int courseId) {

		courseDao.deleteCourse(courseId);

		return "redirect:/listcourse";
	}
	@GetMapping("/editcourse")
	public String editCourse(@RequestParam("courseId") int courseId, Model model) {

		CourseBean course = courseDao.getCourseById(courseId);
		model.addAttribute("course", course);
		return "EditCourse";
	}
	@PostMapping("/updatecourse")
	public String updateCourse(CourseBean course) {
		courseDao.updateCourse(course);
		return "redirect:/listcourse";
	}
	
}
