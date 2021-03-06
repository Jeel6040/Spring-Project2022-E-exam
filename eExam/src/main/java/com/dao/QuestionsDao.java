package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.QuestionsBean;

@Repository
public class QuestionsDao {

	@Autowired
	JdbcTemplate stmt;

	public void addQuestion(QuestionsBean question) {
		stmt.update(
				"insert into questions (courseid,question,option1,option2,option3,option4,correctans) values (?,?,?,?,?,?,?) ",
				question.getCourseId(), question.getQuestion(), question.getOption1(), question.getOption2(),
				question.getOption3(), question.getOption4(), question.getCorrectAns());
	}

	public List<QuestionsBean> getAllQuestions() {
		return stmt.query("select * from questions", new BeanPropertyRowMapper<QuestionsBean>(QuestionsBean.class));
	}

	public List<QuestionsBean> getAllQuestionsByCourse(int courseId) {
		return stmt.query("select * from questions where courseid = ? ",
				new BeanPropertyRowMapper<QuestionsBean>(QuestionsBean.class), new Object[] { courseId });
	}

	public void deleteQuestion(int questionId) {
		stmt.update("delete from questions where questionid = ?", questionId);
	}

	public QuestionsBean getQuestionById(int questionId) {
		QuestionsBean question = stmt.queryForObject("select *  from questions where questionid = ? ",
				new BeanPropertyRowMapper<QuestionsBean>(QuestionsBean.class), new Object[] { questionId });
		return question;
	}

	public void updateQuestion(QuestionsBean question) {
		stmt.update(
				"update question set question = ?, correctans=?, option1=?, option2=?, option3=?, option4=? where questionid = ? ",
				question.getQuestion(), question.getCorrectAns(), question.getOption1(), question.getOption2(),
				question.getOption3(), question.getOption4());
	}
}
