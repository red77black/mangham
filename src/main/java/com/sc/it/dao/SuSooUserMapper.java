package com.sc.it.dao;

import com.sc.it.vo.UserVO;

public interface SuSooUserMapper {

	// 회원가입
	public int insertUser(UserVO user);
}
