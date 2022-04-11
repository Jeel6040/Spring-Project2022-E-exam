package com.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ExamBean;
import com.bean.QuestionsBean;
import com.bean.UserBean;
import com.dao.CourseDao;
import com.dao.ExamDao;
import com.dao.ExamQuestionDao;
import com.dao.QuestionsDao;

@Controller
public class ExamController {

	@Autowired
	ExamDao examDao;
	@Autowired
	CourseDao courseDao;
	@Autowired
	QuestionsDao questionDao;

	@Autowired
	ExamQuestionDao examQuestionDao;

	@GetMapping("/newexam")
	public String newExam(Model model) {
		model.addAttribute("course", courseDao.getAllCourse());
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
	@GetMapping("/studentlistexams")
	public String studentListExams(Model model) {
		List<ExamBean> exam = examDao.getExamByActiveExam(1);
		model.addAttribute("exam", exam);
		return "StudentListExams";
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
		List<QuestionsBean> question = examQuestionDao.getAllQuestionsByExam(exam.getExamId());
		
		model.addAttribute("exam", exam);
		model.addAttribute("question",question);
		return "ExamDetails";
	}
	
	//start exam 
	@GetMapping("/studentexamdetails")
	public String studentExamDetails(@RequestParam("examId") int examId, Model model,HttpSession session) {
		ExamBean exam = examDao.getExamById(examId);
		UserBean user = (UserBean)session.getAttribute("user");
		if(user == null) {
			user = new UserBean();
			user.setUserId(2);
			session.setAttribute("user", user);
		}
		List<QuestionsBean> question = examQuestionDao.getAllQuestionsByExam(exam.getExamId());
		System.out.println(question.get(0).getOption1());
		System.out.println(question.get(0).getQuestion());
		
		model.addAttribute("exam", exam);
		model.addAttribute("question",question);
		model.addAttribute("userId",user.getUserId());
		
		return "StudentExamDetails";
	}
	
	public int getRandomNumberUsingNextInt(int min, int max) {
		Random random = new Random();
		return random.nextInt(max - min) + min;
	}
	
	
	// map questions to exam
	@SuppressWarnings("unused")
	@GetMapping("/generatequestion")
	public String generateQuestion(@RequestParam("examId") int examId, Model model) {
		ExamBean exam = examDao.getExamById(examId);

		int courseId = exam.getCourseId();//10 java 
		int totalQuestion = exam.getTotalNumOfQuestions(); // 5
		int questionId = 0;
		
		List<QuestionsBean> questions = questionDao.getAllQuestionsByCourse(courseId);// 10 java , 10 total question 

		if (questions.size() >= totalQuestion) {

			int totalFound = 1;
			ArrayList<Integer> randomQ = new ArrayList<>();
			while (totalFound <= totalQuestion) {
				int random = getRandomNumberUsingNextInt(0, questions.size() - 1);
				if (!randomQ.contains(random)) {
					randomQ.add(random);
					totalFound++;
				}
			}

			// exam_question -> examid ,questionid
			for (int i : randomQ) {
				examQuestionDao.mapQuestion(examId, questions.get(i).getQuestionId());
			}
			return "redirect:/listexams";
		} else {
			model.addAttribute("error",
					"Please Add Sufficient Questions! we have total questions =  " + questions.size());
			List<ExamBean> examss = examDao.getAllExam();
			model.addAttribute("exam", examss);

			return "ListExams";
		}

	}

}
