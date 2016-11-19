package com.green.greentunes.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

@Repository
public class UserRegInfoDao {
	@Autowired
	private JdbcTemplate jdbcTmp;
	
	@Value("#{sql['user.confirm']}")
	private String userConfirm;
	
	public int getUserConfirm(String userId){
		System.out.println("userConfirm qeury : " + userConfirm);
		System.out.println("userId : " + userId);
		return jdbcTmp.queryForInt(userConfirm, userId);
	}
	
}
