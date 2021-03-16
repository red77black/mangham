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
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(UserVO user) {
		String path = service.insertUser(user);
		return path;
	}
	
}
