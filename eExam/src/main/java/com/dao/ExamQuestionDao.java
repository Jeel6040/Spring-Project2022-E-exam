package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.QuestionsBean;

@Repository
public class ExamQuestionDao {

	@Autowired
	JdbcTemplate stmt;
	public void mapQuestion(int examId,int questionId) {
		stmt.update("insert into examquestion (examid,questionid) values (?,?) ",examId,questionId);
	
	}


	public List<QuestionsBean> getAllQuestionsByExam(int examId) {
		return stmt.query("select * from questions where questionid in ( select questionid from examquestion where examid =  ? ) ",
				new BeanPropertyRowMapper<QuestionsBean>(QuestionsBean.class), new Object[] { examId });
	}
}


//examquestion --> examid --> questionid 


