package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserExamAnsBean;

@Repository
public class UserExamAnsDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void adduserans(UserExamAnsBean userexamans) {
		// TODO Auto-generated method stub
		stmt.update("insert into userexamans where userexamansid = ?", userexamans.getUserExamAns());
	}

}
