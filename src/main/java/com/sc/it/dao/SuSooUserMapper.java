package com.sc.it.dao;

import com.sc.it.vo.UserVO;

public interface SuSooUserMapper {

	// 회원가입
	public int insertUser(UserVO user);
	
	// 로그인
	public UserVO selectUser(UserVO user);
	
	// ID 찾기
	public String findId(UserVO user);
	
	// PW 찾기
	public String findPw(UserVO user);
	
	// 회원정보변경
	public int changeUser(UserVO user);
	
	// PW변경
	public int changePw(UserVO user);
	
	// ID 선택
	public String homeUser(String s_id);
	
	// ID중복체크
	public UserVO checkID(String s_id);
}
