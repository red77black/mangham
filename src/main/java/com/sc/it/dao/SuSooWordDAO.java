package com.sc.it.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.it.vo.WordVO;

@Repository
public class SuSooWordDAO {

	@Autowired
	private SqlSession session;
	
	// 단어 생성
	public int insertWord(WordVO word) {
		int vo = 0;
		
		try {
			SuSooWordMapper mapper = session.getMapper(SuSooWordMapper.class);
			vo = mapper.insertWord(word);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
