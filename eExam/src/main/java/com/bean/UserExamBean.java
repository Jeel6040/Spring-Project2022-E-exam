package com.bean;

public class UserExamBean {

	private int userExamId;
	private int examId;
	private int userId;
	private String status;
	private int obtainMarks;

	//join
	private String examName;
	private String description;
	private int marksPerQuestion;
	private int totalNumOfQuestions;

	
	
	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getMarksPerQuestion() {
		return marksPerQuestion;
	}

	public void setMarksPerQuestion(int marksPerQuestion) {
		this.marksPerQuestion = marksPerQuestion;
	}

	public int getTotalNumOfQuestions() {
		return totalNumOfQuestions;
	}

	public void setTotalNumOfQuestions(int totalNumOfQuestions) {
		this.totalNumOfQuestions = totalNumOfQuestions;
	}

	public int getUserExamId() {
		return userExamId;
	}

	public void setUserExamId(int userExamId) {
		this.userExamId = userExamId;
	}

	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getObtainMarks() {
		return obtainMarks;
	}

	public void setObtainMarks(int obtainMarks) {
		this.obtainMarks = obtainMarks;
	}

}
