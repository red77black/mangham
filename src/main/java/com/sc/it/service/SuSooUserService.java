package com.sc.it.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.it.dao.SuSooUserDAO;
import com.sc.it.vo.UserVO;

@Service
public class SuSooUserService {

	@Autowired
	private SuSooUserDAO dao;
	
	@Autowired
	private HttpSession session;
	
	// 회원가입
	public String insertUser(UserVO user) {
		int cnt = dao.insertUser(user);
		String path = cnt > 0 ? "redirect:/" : "redirect:/user/joinForm";
		return path;
	}
	

	// 로그인
	public String selectUser(UserVO user) {
		UserVO vo = dao.selectUser(user);
		String path = "";
		if(vo != null) {
			session.setAttribute("loginVO", vo);
			session.setAttribute("loginID", vo.getS_id());
			path = "redirect:/home";
		} else {
			path = "redirect:/";
		}
		return path;
	}
	
	// 로그아웃
	public String userLogout() {
		session.removeAttribute("loginVO");
		return "redirect:/";
	}
	
	// ID 찾기
	public String findId(UserVO user) {
		String list = dao.findId(user);
		return list;
	}
	
	// PW 찾기
	public String findPw(UserVO user) {
		String list = dao.findPw(user);
		return list;
	}
	
	// 회원정보 변경
	public String changeUser(UserVO user) {
		int cnt = dao.changeUser(user);
		String path = cnt > 0 ? "redirect:/" : "redirect:/user/change-userForm";
		
		return path;
	}
	
	//PW변경
	public String changePw(UserVO user) {
		int cnt = dao.changePw(user);
		String path = cnt > 0 ? "redirect:/" : "redirect:/user/change-passwordForm";
		
		return path;
		
	}
	
	
}
