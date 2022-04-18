package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ExamBean;
import com.bean.UserExamAnsBean;
import com.bean.UserExamBean;

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
	public List<ExamBean> getExamByInactiveExam(int examActive) {
		// TODO Auto-generated method stub
		List<ExamBean> examactive = stmt.query("select * from exam where examactive=0", new BeanPropertyRowMapper<ExamBean>(ExamBean.class));
		return examactive;
	}
	//exam active and student not taken 
		public List<ExamBean> getExamByActiveExamForStudent(int userId) {
			// TODO Auto-generated method stub
			List<ExamBean> examactive = stmt.query("select * from exam where examactive = 1 and examid not in (select examid from userexam where userid = ? )", new BeanPropertyRowMapper<ExamBean>(ExamBean.class),new Object[] {userId});
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

	/*
	 * public List<UserExamAnsBean> getUserExamAnsByQuestionId(int questionId) { //
	 * TODO Auto-generated method stub List<UserExamAnsBean> userexamans = stmt.
	 * query("select q.*, u.userAns from questions q , userexamans u where q.questionid=u.questionid and q.questionid=?"
	 * , new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new
	 * Object[] {questionId}); return userexamans; }
	 */
	public List<UserExamAnsBean> getUserExamAnsByQuestionId(int examId) {
		// TODO Auto-generated method stub
		List<UserExamAnsBean> userexamans = stmt.query("select * from userexamans where examid = ?", 
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new Object[] { examId });
		return userexamans;
	}

	public void insertUserExam(UserExamBean userExam) {
		// TODO Auto-generated method stub
		stmt.update("insert into userexam (examid,userid,status) values (?,?,'Started')", 
				 userExam.getExamId(), userExam.getUserId());
	
	}

	public void updateExamInactive(ExamBean exam) {
		// TODO Auto-generated method stub
		stmt.update("update exam set examactive=0 where examid=?", exam.getExamId());
	}


	public List<UserExamBean> getExamResultByUser(int userId) {
		// TODO Auto-generated method stub
		List<UserExamBean> examactive = stmt.query("select e.*, ue.status,ue.obtainmarks from exam e , userexam ue where ue.userid = ? and ue.examid = e.examid", new BeanPropertyRowMapper<UserExamBean>(UserExamBean.class),new Object[] {userId});
		return examactive;
	}
}
