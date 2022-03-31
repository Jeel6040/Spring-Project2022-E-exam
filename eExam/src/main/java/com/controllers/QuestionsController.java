package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.QuestionsBean;
import com.dao.QuestionsDao;

@Controller
public class QuestionsController {
	
	@Autowired
	QuestionsDao questionsDao;
	
	@GetMapping("/newquestion")
	public String newQuestion() {
		return "NewQuestion";
	}
	@PostMapping("/savequestion")
	public String saveQuestion(QuestionsBean question) {
		questionsDao.addQuestion(question);
		return "redirect:/getallquestions";
	}
	@GetMapping("/getallquestions")
	public String getAllQuestions(Model model) {
		List<QuestionsBean> question = questionsDao.getAllQuestions();
		model.addAttribute("question", question);
		return "ListQuestions";
	}
	@GetMapping("/deletequestion/{questionId}")
	public String deleteQuestion(@PathVariable("questionId") int questionId) {
		
		questionsDao.deleteQuestion(questionId);
		return "redirect:/listquestions";
	}

	@GetMapping("/editquestion")
	public String editQuestion(@RequestParam("questionId") int questionId, Model model) {

		QuestionsBean question = questionsDao.getQuestionById(questionId);
		model.addAttribute("question", question);
		return "EditQuestion";
	}

	@PostMapping("/updatequestion")
	public String updateQuestion(QuestionsBean question) {
		questionsDao.updateQuestion(question);
		return "redirect:/listquestions";
	}
}
