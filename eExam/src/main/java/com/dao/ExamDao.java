package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ExamBean;

@Repository
public class ExamDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void insertExam(ExamBean exam) {
		// TODO Auto-generated method stub
		stmt.update("inset into exam (examname) value = (?)",exam.getExamName());
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

	public void updateExam(ExamBean exam) {
		// TODO Auto-generated method stub
		stmt.update("update exam set examname=?, isactive=?, description=?, marksperquestion=?, totalnumofquestion=? where examid = ?",
				exam.getExamName(), exam.getIsActive(), exam.getDescription(), exam.getMarksPerQuestion(), 
				exam.getTotalNumOfQuestions(), exam.getExamId());
	}
	
	
}
