package com.sc.it.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sc.it.service.SuSooUserService;
import com.sc.it.service.SuSooWordListService;
import com.sc.it.service.SuSooWordService;
import com.sc.it.vo.WordListVO;
import com.sc.it.vo.WordVO;

@Controller
@RequestMapping(value = "/word")
public class WordController {
   
	@Autowired
	private SuSooWordListService service;
	
	@Autowired
	private SuSooWordService wordService;
	
	@Autowired
	private SuSooUserService userService;
   
	
   // 게시판 생성 폼
   @RequestMapping(value = "/wordListForm", method = RequestMethod.GET)
   public String insertListForm() {
      return "word/wordListForm";
   }
   
   // 게시판 생성
   @RequestMapping(value = "/wordList", method = RequestMethod.POST)
   public String insertList(WordListVO list) {
      return service.insertList(list);
   }
   
   // 게시판 리스트
   @RequestMapping(value = "/wordNote", method = RequestMethod.GET) 
   public String selectList(Model model) { 
   ArrayList<HashMap<String, Object>> list = service.selectList(); 
   model.addAttribute("list", list); 
   return "wordNote"; 
   }

   
   // 게시판 삭제
   @RequestMapping(value = "/deleteWordNote", method = RequestMethod.GET)
   public String deleteWordList(int wordlist_num) {
	   service.deleteWordList(wordlist_num);
	   System.out.println(wordlist_num);
	   return "redirect:/word/wordNote";
   }
   

   // 단어장
   @RequestMapping(value = "/words", method = RequestMethod.POST)
   public String insertWord(WordVO word, HttpSession session, Model model, HttpServletRequest request) {
	   System.out.println(word);
	   String s_id = (String)session.getAttribute("s_id");
	   model.addAttribute("s_id", s_id);
	   System.out.println(s_id);
	   return wordService.insertWord(word);
   }
}
