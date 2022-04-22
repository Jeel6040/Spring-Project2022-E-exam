package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserExamAnsBean;

@Repository
public class UserExamAnsDao {

	@Autowired
	JdbcTemplate stmt;

	public void adduserAns(UserExamAnsBean userexamans) {
		
		stmt.update("insert into userexamans (userans,userid,questionid,examid) values (?,?,?,?) ",
				userexamans.getUserAns(), userexamans.getUserId(), userexamans.getQuestionId(),
				userexamans.getExamId());
		System.out.println("done...");
	}

	public List<UserExamAnsBean> getAllUserExamAns() {
		
		return stmt.query("select * from userexamans",
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class));
	}

	public void deleteUserExamAns(int userExamAnsId) {
		
		stmt.update("delete from userexamans where userexamansid=?", userExamAnsId);
	}

	public UserExamAnsBean getUserExamAnsById(int userExamAnsId) {
		
		UserExamAnsBean userexamans = stmt.queryForObject("select * from userexamans where userexamansid=?",
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new Object[] { userExamAnsId });
		return userexamans;
	}

	public void updateUserExamAns(UserExamAnsBean userexamans) {
		
		stmt.update("update usereamans set userans=? where userexamansid=?", userexamans.getUserAns(),
				userexamans.getUserExamAnsId());
	}

	public void updateCorrectAns() {
		
		stmt.update("update userexamans set ansstatus=1");
	}

	public void updateWrongAns() {
		
		stmt.update("update userexamans set ansstatus=0");
	}

	public void updateMarks(int examId, int marks) { 
		stmt.update("update userexam set obtainmarks = ? , status = ? where examid=?", marks,"completed",examId);
	}

	public List<UserExamAnsBean> getUserExamAnsByExamId(int examId) {
		
		return stmt.query("select * from userexamans where examid=?",
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new Object[] { examId });
	}

	

	public List<UserExamAnsBean> getUserExamAnsByExamIdForViewAns(int examId) {
		
		return stmt.query("select ue.*,q.* from userexamans ue,questions q where examid=? and ue.questionid = q.questionid",
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new Object[] { examId });
	}

	
	public void updateAnsStatus(UserExamAnsBean ua) {
		stmt.update("update userexamans set ansstatus = ?  where userexamansid = ? ", ua.getAnsStatus(),
				ua.getUserExamAnsId());
	}
}
