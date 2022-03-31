package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ExamBean;
import com.dao.ExamDao;

@Controller
public class ExamController {
	
	@Autowired
	ExamDao examDao;
	
	@GetMapping("/newexam")
	public String newExam() {
		return "NewExam";
	}
	
	@PostMapping("/saveexam")
	public String saveExam(ExamBean exam) {
		examDao.insertExam(exam);
		return "redirect:/listexams";
	}
	
	@GetMapping("/listexams")
	public String listExams(Model model) {
		List<ExamBean> exam = examDao.getAllExam();
		model.addAttribute("exam", exam);
		return "ListExams";
	}
	
	@GetMapping("/deleteexams{examId}")
	public String deleteExam(@PathVariable("examId") int examId) {
		examDao.deleteExam(examId);
		return "redirect:/listexams";
	}
	
	@GetMapping("/editexam")
	public String editExam(@RequestParam("examId") int examId, Model model) {
		ExamBean exam = examDao.getExamById(examId);
		model.addAttribute("exam", exam);
		return "EditExams";
	}
	
	@PostMapping("/updateexam")
	public String updateExam(ExamBean exam) {
		examDao.updateExam(exam);
		return "redirect:/listexams";
	}
}
