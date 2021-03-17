package com.sc.it.dao;

import java.util.ArrayList;

import com.sc.it.vo.UserVO;

public interface SuSooUserMapper {

	// 회원가입
	public int insertUser(UserVO user);
	
	// 로그인
	public UserVO selectUser(UserVO user);
	
	// ID 찾기
	public String findId(UserVO user);
	
	// PW 찾기
	public ArrayList<UserVO> findPw(UserVO user);
}
