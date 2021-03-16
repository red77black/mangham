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
	
	
}
