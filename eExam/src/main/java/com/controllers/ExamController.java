package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ExamBean;
import com.dao.CourseDao;
import com.dao.ExamDao;

@Controller
public class ExamController {
	
	@Autowired
	ExamDao examDao;
	@Autowired
	CourseDao courseDao;
	
	@GetMapping("/newexam")
	public String newExam(Model model) {
		model.addAttribute("course",courseDao.getAllCourse());
		return "NewExam";
	}
	
	@PostMapping("/saveexam")
	public String saveExam(ExamBean exam) {
		examDao.insertExam(exam);
		return "redirect:/getallexam";
	}
	@GetMapping("/getallexam")
	public String getAllExam(Model model) {
		List<ExamBean> exam = examDao.getAllExam();
		model.addAttribute("exam", exam);
		return "ListExams";
	}
	
	@GetMapping("/listexams")
	public String listExams(Model model) {
		List<ExamBean> exam = examDao.getAllExam();
		model.addAttribute("exam", exam);
		return "ListExams";
	}
	
	@GetMapping("/deleteexam{examId}")
	public String deleteExam(@RequestParam("examId") int examId) {
		examDao.deleteExam(examId);
		return "redirect:/listexams";
	}
	
	@GetMapping("/editexam")
	public String editExam(@RequestParam("examId") int examId, Model model) {
		ExamBean exam = examDao.getExamById(examId);
		model.addAttribute("exam", exam);
		return "EditExam";
	}
	
	@PostMapping("/updateexam")
	public String updateExam(ExamBean exam) {
		examDao.updateExam(exam);
		return "redirect:/listexams";
	}
	@GetMapping("/examdetails")
	public String examDetails(@RequestParam("examId") int examId, Model model) {
		ExamBean exam = examDao.getExamById(examId);
		model.addAttribute("exam", exam);
		return "ExamDetails";
	}
}
