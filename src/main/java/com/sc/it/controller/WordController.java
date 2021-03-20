package com.sc.it.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sc.it.service.SuSooWordService;
import com.sc.it.vo.WordVO;

@Controller
@RequestMapping(value = "/word")
public class WordController {
	
	@Autowired
	private SuSooWordService service;
	
	//단어장 이동 및 전체 단어 갯수
	@RequestMapping(value = "/wordNote", method = RequestMethod.GET)
		public String wordNote(HttpSession session, Model model) {
		int cnt = service.countWord((String)session.getAttribute("loginID"));
		int memoCnt = service.countMemoWord((String)session.getAttribute("loginID"));
		int notMemoCnt = service.countNotMemoWord((String)session.getAttribute("loginID"));
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("memoCnt", memoCnt);
		model.addAttribute("notMemoCnt", notMemoCnt);
			 
		return "wordNote"; 
	 }
	
	// 전체 단어 가져오기
	@RequestMapping(value = "/words", method = RequestMethod.GET)
	public String selectAllWord(HttpSession session, Model model){
		ArrayList<WordVO> words = service.selectAllWord((String)session.getAttribute("loginID"));
		model.addAttribute("words", words);
		return "words";
	}
	
	// 암기 단어 가져오기
	@RequestMapping(value = "/memoWords", method = RequestMethod.GET)
	public String selectMemoWord(HttpSession session, Model model){
		ArrayList<WordVO> words = service.selectAllWord((String)session.getAttribute("loginID"));
		model.addAttribute("words", words);
		return "memoWords";
	}
	
	// 미암기 단어 가져오기
	@RequestMapping(value = "/notMemoWords", method = RequestMethod.GET)
	public String selectNotMemoWord(HttpSession session, Model model){
		ArrayList<WordVO> words = service.selectAllWord((String)session.getAttribute("loginID"));
		model.addAttribute("words", words);
		return "notMemoWords";
	}
	
	//암기 단어로 체인지
	@RequestMapping(value = "/toMemoWord", method = RequestMethod.GET)
	public String updateMemoWord(int word_num) {
		service.updateMemoWord(word_num);
		return "notMemoWords";
	}
	
	//미암기 단어로 체인지
	@RequestMapping(value = "/toNotMemoWord", method = RequestMethod.GET)
	public String updateNotMemoWord(int word_num) {
		service.updateNotMemoWord(word_num);
		return "notMemoWords";
	}
	
	 //단어 삭제
	 @RequestMapping(value = "/deleteWord", method = RequestMethod.GET) 
	public String deleteWord(int word_num) { 
		service.deleteWord(word_num); 
	 	return "words"; 
	 }
	 
	 
	 
	 
	
}
