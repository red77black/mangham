package com.sc.it.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//로그인 폼
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm() {
		return "/";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO user) {
		return service.selectUser(user);
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout() {
		return service.userLogout();
	}
	
	// ID 찾기폼
	@RequestMapping(value = "/findIdForm", method = RequestMethod.GET)
	public String findIdForm() {
		return "user/findIdForm";
	}
	
	// ID 찾기
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId(UserVO user, Model model) {
		String id = service.findId(user);
		model.addAttribute("s_id", id);
		System.out.println(id);
		return "user/findIdForm";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/findPwForm", method = RequestMethod.GET)
	public String findPwForm() {
		return "user/findPwForm";
	}
	
	//마이페이지 폼 이동
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage() {
		return "user/myPage";
	}
	
}
