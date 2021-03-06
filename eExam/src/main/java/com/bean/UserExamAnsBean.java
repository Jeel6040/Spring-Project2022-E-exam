package com.bean;

public class UserExamAnsBean {

	private String userAns;
	private int userExamAnsId;
	private int userId;
	private int examId;
	private int questionId;
	private int ansStatus;
	
	
	
	//join 
 	private String question;
	private String correctAns;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	
	
 
	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getCorrectAns() {
		return correctAns;
	}


	public void setCorrectAns(String correctAns) {
		this.correctAns = correctAns;
	}


	public String getOption1() {
		return option1;
	}


	public void setOption1(String option1) {
		this.option1 = option1;
	}


	public String getOption2() {
		return option2;
	}


	public void setOption2(String option2) {
		this.option2 = option2;
	}


	public String getOption3() {
		return option3;
	}


	public void setOption3(String option3) {
		this.option3 = option3;
	}


	public String getOption4() {
		return option4;
	}


	public void setOption4(String option4) {
		this.option4 = option4;
	}


	public UserExamAnsBean() {
	}
	
	 
	public int getAnsStatus() {
		return ansStatus;
	}

	public void setAnsStatus(int ansStatus) {
		this.ansStatus = ansStatus;
	}

	public String getUserAns() {
		return userAns;
	}
	public void setUserAns(String userAns) {
		this.userAns = userAns;
	}
	public int getUserExamAnsId() {
		return userExamAnsId;
	}
	public void setUserExamAnsId(int userExamAnsId) {
		this.userExamAnsId = userExamAnsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

}
