package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.RoleBean;

@Repository
public class RoleDao {

	@Autowired
	JdbcTemplate stmt;

	public void insertRole(RoleBean role) {

		stmt.update("insert into roles (rolename) values (?)", role.getRoleName());
	}

	public List<RoleBean> getAllRoles() {
		List<RoleBean> roles = stmt.query("select * from roles", new BeanPropertyRowMapper<RoleBean>(RoleBean.class));
		return roles;
	}

	public void deleteRole(int roleId) {
		stmt.update("delete from roles where roleid = ?", roleId);
	}

	public RoleBean getRoleById(int roleId) {

		RoleBean role = stmt.queryForObject("select *  from roles where roleid = ? ",
				new BeanPropertyRowMapper<RoleBean>(RoleBean.class), new Object[] { roleId });

		return role;
	}

	public void updateRole(RoleBean role) {
		stmt.update("update roles set rolename = ? where roleid = ? ", role.getRoleName(), role.getRoleId());
	}
	
}
