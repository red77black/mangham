package com.sc.it.controller;

import java.util.ArrayList;
<<<<<<< HEAD
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
=======

>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.stereotype.Service;
=======
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sc.it.service.SuSooWordService;
import com.sc.it.vo.WordVO;

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
<<<<<<< HEAD
	private SuSooWordService wordService;
	
	@Autowired
	private SuSooUserService userService;
   
=======
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
		return "redirect:/word/notMemoWords";
	}
	
	//미암기 단어로 체인지
	@RequestMapping(value = "/toNotMemoWord", method = RequestMethod.GET)
	public String updateNotMemoWord(int word_num) {
		service.updateNotMemoWord(word_num);
		return "redirect:/word/memoWords";
	}
	
	 //단어 삭제
	@RequestMapping(value = "/deleteWord", method = RequestMethod.GET) 
	public String deleteWord(int word_num, int num) { 
		service.deleteWord(word_num); 
		String path = "";
		
		if(num == 0) {
			path = "redirect:/word/words";
		}else if(num == 1) {
			path = "redirect:/word/memoWords";
		}else if(num == 2) {
			path = "redirect:/word/notMemoWords";
		}
		
	 	return path; 
	 }
	 
	
	//비동기식 미/암기 처리
	@RequestMapping(value = "/changeCheck", method = RequestMethod.POST)
	@ResponseBody 
	public void changeCheck(int checking_num, int word_num, HttpSession session, Model model) {
		System.out.println(word_num);
		
		if(checking_num == 1) {
			service.updateNotMemoWord(word_num); 
		}else if(checking_num == 2) {
			service.updateMemoWord(word_num);
		}
		
	}
		 
	 
	 
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
	
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
