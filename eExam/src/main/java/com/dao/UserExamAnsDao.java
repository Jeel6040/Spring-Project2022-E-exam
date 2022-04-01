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
	
	public void adduserans(UserExamAnsBean userexamans) {
		// TODO Auto-generated method stub
		stmt.update("insert into userexamans (userans) values (?)", userexamans.getUserExamAns());
	}

	public List<UserExamAnsBean> getAllUserExamAns() {
		// TODO Auto-generated method stub
		return stmt.query("select * from userexamans", new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class));
	}

	public void deleteUserExamAns(int userExamAnsId) {
		// TODO Auto-generated method stub
		stmt.update("delete from userexamans where userexamansid=?", userExamAnsId);
	}

	public UserExamAnsBean getUserExamAnsById(int userExamAnsId) {
		// TODO Auto-generated method stub
		UserExamAnsBean userexamans = stmt.queryForObject("select * from userexamans where userexamansid=?", 
				new BeanPropertyRowMapper<UserExamAnsBean>(UserExamAnsBean.class), new Object[] { userExamAnsId });
		return userexamans;
	}

	public void updateUserExamAns(UserExamAnsBean userexamans) {
		// TODO Auto-generated method stub
		stmt.update("update usereamans set userans=? where userexamansid=?", userexamans.getUserExamAns(), userexamans.getUserExamAnsId());
	}

}
