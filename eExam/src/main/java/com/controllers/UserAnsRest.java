package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bean.ExamBean;
import com.bean.QuestionsBean;
import com.bean.UserExamAnsBean;
import com.dao.ExamDao;
import com.dao.ExamQuestionDao;
import com.dao.QuestionsDao;
import com.dao.UserExamAnsDao;

@RestController
public class UserAnsRest {

	@Autowired
	UserExamAnsDao userExamAnsDao;

	@Autowired
	ExamDao examDao;

	@Autowired
	QuestionsDao questionDao;

	@Autowired
	ExamQuestionDao examQuestionDao;

	
	@RequestMapping(value = "/saveuserexamans", method = RequestMethod.POST, produces = "application/json")
	public String saveUserExamAns(UserExamAnsBean userexamans) {
		System.out.println("======");
		System.out.println(userexamans);
		System.out.println(userexamans.getUserAns());
		userExamAnsDao.adduserAns(userexamans);
		System.out.println("====");
		return "done";

	}

	@GetMapping("/generateFinalResult")
	public String generateResult(@RequestParam("examId") int examId) {

		ExamBean exam = examDao.getExamById(examId);

		List<UserExamAnsBean> userExamAns = userExamAnsDao.getUserExamAnsByExamId(exam.getExamId());
		int correctAns = 0;
		for (UserExamAnsBean ua : userExamAns) {
			QuestionsBean question = questionDao.getQuestionById(ua.getQuestionId());
			if (question.getCorrectAns().equals(ua.getUserAns())) {
				ua.setAnsStatus(1);
				correctAns++;
			} else {
				ua.setAnsStatus(0);
			}
			userExamAnsDao.updateAnsStatus(ua);
		}
		int totalObtainMarks = correctAns * exam.getMarksPerQuestion();
		userExamAnsDao.updateMarks(exam.getExamId(), totalObtainMarks);
		return "ResultGenerated";
	}
}
