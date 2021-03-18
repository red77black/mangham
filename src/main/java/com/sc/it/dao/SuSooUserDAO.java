package com.sc.it.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.it.vo.UserVO;

@Repository
public class SuSooUserDAO {

	@Autowired
	private SqlSession session;
	
	// 회원가입
	public int insertUser(UserVO user) {
		int cnt = 0;
		try {
			SuSooUserMapper mapper = session.getMapper(SuSooUserMapper.class);
			cnt = mapper.insertUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	// 로그인
	public UserVO selectUser(UserVO user) {
		UserVO vo = null;
		
		try {
			SuSooUserMapper mapper = session.getMapper(SuSooUserMapper.class);
			vo = mapper.selectUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	// ID 찾기
	public String findId(UserVO user) {
		String list = null;
		
		try {
			SuSooUserMapper mapper = session.getMapper(SuSooUserMapper.class);
			list = mapper.findId(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// PW 찾기
	public String findPw(UserVO user) {
		String list = null;
		
		try {
			SuSooUserMapper mapper = session.getMapper(SuSooUserMapper.class);
			list = mapper.findPw(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
