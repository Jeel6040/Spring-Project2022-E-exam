package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.UserBean;

@Repository
public class UserDao {
	
	@Autowired
	JdbcTemplate stmt;

	public void addUser(UserBean user) {
		stmt.update("insert into users (firstname,lastname,email,contactno,gender,password,roleid) values (?,?,?,?,?,?,?) ", user.getFirstName(),
				user.getLastName(), user.getEmail(),user.getContactNo(), user.getGender(), user.getPassword(), user.getRoleId());
	}

	public List<UserBean> getAllUsers() {

		return stmt.query("select u.*,r.roleName  from users u,roles r where u.roleid = r.roleid ",
				new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}

	public void deleteUser(int userId) {
		// TODO Auto-generated method stub
		stmt.update("delete from users where userid = ?", userId);
	}

	public UserBean getUserById(int userId) {
		// TODO Auto-generated method stub
		UserBean user = stmt.queryForObject("select *  from users where userid = ? ",
				new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { userId });
		return user;
	}

	public void updateUser(UserBean user) {
		// TODO Auto-generated method stub
		stmt.update("update users set firstName=?, lastName=?, email=?, contactno=?, gender=? where userid=?", user.getFirstName(), 
				user.getLastName(), user.getEmail(), user.getContactNo(), user.getGender(),user.getUserId());
	}
	// stmt.update("update users set firstname = ? , lastname = ? ,gender = ? where
	// userid = ?
	// ",user.getFirstName(),user.getLastName(),user.getGender(),user.getUserId());

}
