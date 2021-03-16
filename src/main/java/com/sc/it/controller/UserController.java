package com.sc.it.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sc.it.service.SuSooUserService;
import com.sc.it.vo.UserVO;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private SuSooUserService service;
	
	//회원가입 폼
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "user/joinForm";
	}
	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(UserVO user) {
		return service.insertUser(user);
	}
	
}
