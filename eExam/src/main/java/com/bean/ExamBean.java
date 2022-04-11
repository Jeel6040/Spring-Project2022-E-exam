package com.bean;

public class ExamBean {
	
	private int examId;
	private int courseId;
	private String examName;
	private String description;
	private int marksPerQuestion;
	private int examActive;
	private int totalNumOfQuestions;
	
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
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
	public int getExamActive() {
		return examActive;
	}
	public void setExamActive(int examActive) {
		this.examActive = examActive;
	}
	public int getTotalNumOfQuestions() {
		return totalNumOfQuestions;
	}
	public void setTotalNumOfQuestions(int totalNumOfQuestions) {
		this.totalNumOfQuestions = totalNumOfQuestions;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}

}
