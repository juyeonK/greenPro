package com.green.greentunes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.greentunes.bean.UserRegInfo;

@Controller
public class HomeController {
	
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
}
