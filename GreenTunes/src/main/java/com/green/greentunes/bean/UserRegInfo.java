package com.green.greentunes.bean;

import java.util.Date;

public class UserRegInfo {
	private String userId;
	private String userPw;
	private String userMail;
	private	String userPhone;
	private String userGender;
	private String userName;
	private String userBirth;
	private Date userRegDate;
	private int userLevel;
	
	public UserRegInfo() {}
	
	public UserRegInfo(String userId, String userPw, String userMail,
			String userPhone, String userGender, String userName,
			String userBirth, Date userRegDate, int userLevel) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userMail = userMail;
		this.userPhone = userPhone;
		this.userGender = userGender;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userRegDate = userRegDate;
		this.userLevel = userLevel;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public Date getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(Date userRegDate) {
		this.userRegDate = userRegDate;
	}
	public int getUserLevel() {
		return userLevel;
	}
	public void setUserLevel(int userLevel) {
		this.userLevel = userLevel;
	}
}
