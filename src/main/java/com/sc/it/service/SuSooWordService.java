package com.sc.it.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.it.dao.SuSooWordDAO;
import com.sc.it.dao.SuSooWordListDAO;
import com.sc.it.vo.WordVO;

@Service
public class SuSooWordService {

	@Autowired
	private SuSooWordDAO dao;
	
	@Autowired
	private SuSooWordListDAO listDao;
	
	@Autowired
	private HttpSession session;
	
	public String insertWord(WordVO word) {
		int cnt = dao.insertWord(word);
		String path = cnt > 0 ? "redirect:/home" : "redirect:/home";
		return path;
	}
	
}
