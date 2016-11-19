package com.green.greentunes.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserRegInfoDao {
	@Autowired
	private JdbcTemplate jdbcTmp;
	
}
