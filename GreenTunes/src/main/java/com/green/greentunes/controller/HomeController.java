package com.green.greentunes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.greentunes.bean.UserRegInfo;
import com.green.greentunes.dao.UserRegInfoDao;

@Controller
public class HomeController {
	@Autowired
	private UserRegInfoDao dao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("contentPage","home.jsp");
		return "default/index";
	}
	
	@RequestMapping(value = "/join")
	public String go(Model model){
		model.addAttribute("contentPage","../user/joinForm.jsp");
		return "default/index";
	}
	
	
	@RequestMapping(value = "/doJoin")
	public void doit(UserRegInfo userInfo){
		System.out.println(userInfo.getUserId());
		System.out.println(userInfo.getUserGender());
		System.out.println(userInfo.getUserLevel());
	}
	
	@RequestMapping("confirmId")
	@ResponseBody
	public String doConfirmId(String userId){
		System.out.println("requestMapping : confirmId");
		
		int count = dao.getUserConfirm(userId);
		System.out.println("result :" + count);
		
		if(count>0){
			return "NO";
		}else{
			return "OK";
		}
	}
}
