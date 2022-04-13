package com.bean;

public class UserExamAnsBean {

	private String userAns;
	private int userExamAnsId;
	private int userId;
	private int examId;
	private int questionId;
	private String ansStatus;
	
	
	
	QuestionsBean quest; 
	
	
	public QuestionsBean getQuest() {
		return quest;
	}

	public void setQuest(QuestionsBean quest) {
		this.quest = quest;
	}

	public UserExamAnsBean() {
	}
	
	public String getAnsStatus() {
		return ansStatus;
	}
	public void setAnsStatus(String ansStatus) {
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
