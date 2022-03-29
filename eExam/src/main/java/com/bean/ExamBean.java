package com.bean;

public class ExamBean {
	
	private int examId;
	private int courseId;
	private String title;
	private String description;
	private int marksPerQuestion;
	private String isActive;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	public int getTotalNumOfQuestions() {
		return totalNumOfQuestions;
	}
	public void setTotalNumOfQuestions(int totalNumOfQuestions) {
		this.totalNumOfQuestions = totalNumOfQuestions;
	}

}
