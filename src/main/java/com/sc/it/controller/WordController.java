package com.sc.it.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sc.it.vo.TextVO;

@Controller
@RequestMapping(value = "/word")
public class WordController {
	
	@RequestMapping(value = "/wordNote", method = RequestMethod.GET)
	public String wordNote() {
		return "wordNote";
	}
	
	@RequestMapping(value = "/words", method = RequestMethod.GET)
	public String words() {
		return "words";
	}
	
	
	
	
	
}
