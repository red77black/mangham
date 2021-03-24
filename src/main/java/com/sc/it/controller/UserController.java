package com.sc.it.controller;

<<<<<<< HEAD
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
=======
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sc.it.service.SuSooUserService;
import com.sc.it.vo.UserVO;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private SuSooUserService service;
	@Autowired
	private HttpSession session;
	
	//회원가입 폼
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "user/joinForm";
	}
	
	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(UserVO user) {
		return service.insertUser(user);
	}
	
	//로그인 폼
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm(HttpServletRequest request, Model model) {
		logger.info("로그인 페이지 이동");
		//사용자쪽에 내가 숨겨놓은 쿠키가 있는지 확인한다.
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie c : cookies) {
				if("cookieID".equals(c.getName())) {
					model.addAttribute("s_id", c.getValue());
				}
			}
		}
		return "/";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
<<<<<<< HEAD
	public String login(UserVO user, HttpSession session, boolean loginCheck, HttpServletResponse response, Model model) {
=======
	public String login(UserVO user, Model model) {
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
		UserVO vo = service.selectUser(user);
		String errMsg = "";
		
		if(vo != null) {
<<<<<<< HEAD
			//session scope에 login 성공한 유저의 정보를 저장하는 것
			logger.info("로그인 처리");
			session.setAttribute("s_id", user.getS_id());
			session.setAttribute("s_name", vo.getS_name());
			
			Cookie c = new Cookie("cookieID", user.getS_id());
			if(loginCheck) {
			//아이디 기억하기를 선택한 상황
				c.setMaxAge(60*60*24);
			}else {
				//아이디 기억하기를 선택하지 않은 상황
				c.setMaxAge(0);
			}
			response.addCookie(c);
		}
		//비밀번호가 틀린상황
		else {
			errMsg = "정보가 틀리게 입력되었습니다.";
			model.addAttribute("errMsg", errMsg);
			return "/";
=======
			session.setAttribute("loginVO", vo);
			session.setAttribute("loginID", vo.getS_id());
		} else {
			errMsg = "정보가 틀리게 입력되었습니다.";
			model.addAttribute("errMsg", errMsg);
			return "index";
>>>>>>> 11e4b0eef4a7c50c3f57e6fe26587a2cec124364
		}
		return "redirect:/home";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {
		logger.info("로그아웃 처리");
		session.removeAttribute("userVO");
		session.removeAttribute("s_id");
		session.removeAttribute("s_name");
		return "redirect:/";
	}
	
	// ID 찾기 폼
	@RequestMapping(value = "/findIdForm", method = RequestMethod.GET)
	public String findIdForm() {
		return "user/findIdForm";
	}
	
	// ID 찾기
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findId(UserVO user, Model model) {
		String id = service.findId(user);
		String errMsg = "";
		
		if(id != null) {
			model.addAttribute("s_id", id);
			return "user/findIdForm";
		} else {
			errMsg = "정보가 틀리게 입력되었습니다.";
			model.addAttribute("errMsg", errMsg);
			return "user/findIdForm";
		}
		
	}
	
	// 비밀번호 찾기 폼
	@RequestMapping(value = "/findPwForm", method = RequestMethod.GET)
	public String findPwForm() {
		return "user/findPwForm";
	}
	
	// 비밀번호 찾기 
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public String findPw(UserVO user, Model model) {
		String pw = service.findPw(user);
		String errMsg = "";
		
		if(pw != null) {
			model.addAttribute("s_pw", pw);
			return "user/findPwForm";
		} else {
			errMsg = "정보가 틀리게 입력되었습니다.";
			model.addAttribute("errMsg", errMsg);
			return "user/findPwForm";
		}
	}
	
	//마이페이지 폼 이동
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage() {
		return "user/myPage";
	}
	
	//회원정보 폼 이동
	@RequestMapping(value = "/change-userForm", method = RequestMethod.GET)
	public String changeUserForm() {
		return "user/change-userForm";
	}
	
	//비밀번호 변경 폼 이동
	@RequestMapping(value = "/change-passwordForm", method = RequestMethod.GET)
	public String changePasswordForm() {
		return "user/change-passwordForm";
	}
	
	//회원정보 변경
	@RequestMapping(value = "/changeUser", method = RequestMethod.POST)
	public String changeUser(UserVO user) {
		String path = service.changeUser(user);
		return path;
	}
	
	//PW변경
	@RequestMapping(value = "/changePw", method = RequestMethod.POST)
	public String changePw(UserVO user) {
		String path = service.changePw(user);
		return path;
	}
	
}
