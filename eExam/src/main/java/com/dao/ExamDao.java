package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ExamBean;
import com.bean.UserExamAnsBean;

@Repository
public class ExamDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void insertExam(ExamBean exam) {
		// TODO Auto-generated method stub
		stmt.update("insert into exam (courseid,examname,description,marksperquestion,totalnumofquestions,examactive) values (?,?,?,?,?,?)", 
				exam.getCourseId(), exam.getExamName(), exam.getDescription(), exam.getMarksPerQuestion(), exam.getTotalNumOfQuestions(), exam.getExamActive());
	}
	
	public List<ExamBean> getAllExam() {
		// TODO Auto-generated method stub
		List<ExamBean> exam = stmt.query("select * from exam", new BeanPropertyRowMapper<ExamBean>(ExamBean.class));
		return exam;
	}

	public void deleteExam(int examId) {
		// TODO Auto-generated method stub
		stmt.update("delete from exam where examid = ?",examId);
	}

	public ExamBean getExamById(int examId) {
		// TODO Auto-generated method stub
		ExamBean exam = stmt.queryForObject("select * from exam where examid = ?", 
				new BeanPropertyRowMapper<ExamBean>(ExamBean.class), new Object[] { examId });
		return exam;
	}
	//exam active
	public List<ExamBean> getExamByActiveExam(int examActive) {
		// TODO Auto-generated method stub
		List<ExamBean> examactive = stmt.query("select * from exam where examactive=1", new BeanPropertyRowMapper<ExamBean>(ExamBean.class));
		return examactive;
	}
	//exam completed
	public List<ExamBean> getExamByExamComplete(int examActive) {
		// TODO Auto-generated method stub
		List<ExamBean> examactive = stmt.query("select * from exam where examactive=2", new BeanPropertyRowMapper<ExamBean>(ExamBean.class));
		return examactive;
	}
	
	public void updateExam(ExamBean exam) {
		// TODO Auto-generated method stub
		stmt.update("update exam set examname=?, examactive=?, description=?, marksperquestion=?, totalnumofquestions=? where examid = ?",
				exam.getExamName(), exam.getExamActive(), exam.getDescription(), exam.getMarksPerQuestion(), 
				exam.getTotalNumOfQuestions(), exam.getExamId());
	}

	public void updateUserExamAnsStatus(UserExamAnsBean userexamans) {
		// TODO Auto-generated method stub
		stmt.update("update userexamans set ansstatus=? where userexamansid=?", userexamans.getAnsStatus(), userexamans.getUserExamAnsId());
	}
}
