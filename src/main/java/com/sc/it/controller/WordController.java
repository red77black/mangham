package com.sc.it.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/word")
public class WordController {
	
	@RequestMapping(value = "/wordNote", method = RequestMethod.GET)
	public String wordNote() {
		return "wordNote";
	}
	
	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public String MyPage() {
		return "MyPage";
	}
	
	@RequestMapping(value = "/words", method = RequestMethod.GET)
	public String words() {
		return "words";
	}
}
