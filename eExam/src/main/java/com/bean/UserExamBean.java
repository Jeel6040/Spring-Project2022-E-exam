package com.bean;

public class UserExamBean {
	
	private int userExamId;
	private int examId;
	private int userId;
	private String status;
	private int obtainMarks;
	
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
