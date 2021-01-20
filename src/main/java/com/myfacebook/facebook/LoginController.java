package com.myfacebook.facebook;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myfacebook.facebook.model.LoginDTO;
import com.myfacebook.facebook.service.LoginMapper;


@Controller
public class LoginController {
	
	@Autowired
	private LoginMapper loginMapper;
	@RequestMapping("home.do")
	public String home() {
		return "home";
	}
	@RequestMapping("login.do")
	public String login() {
		return "login/login";
	}
	@RequestMapping("login_ok.do")
	public ModelAndView loginOk(HttpServletRequest req,LoginDTO dto,HttpSession session) {
		String msg,url;
		ModelAndView mav = new ModelAndView("home");
		String email =(String)req.getParameter("email");
		String password = (String)req.getParameter("password");
		dto.setEmail(email);
		LoginDTO getMember = loginMapper.getMember(dto);
		if(getMember!=null) {
		if(password.equals(getMember.getPassword())) {
		session.setAttribute("getMember",getMember);
		msg="로그인 성공!!";
		url="home.do";
		}
		else {
			msg="로그인 실패! 비밀번호가 다릅니다";
			url="login.do";
		}}else {
			msg="로그인 실패! 없는회원입니다";
			url="login.do";
		}
		mav.addObject("url",url);
		mav.addObject("msg",msg);
		return mav;
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login/login";
	}
	@RequestMapping("member_input.do")
	public String memberInput() {
		return "login/member_input";
	}
	@RequestMapping("member_input_ok.do")
	public ModelAndView memberInputOk(HttpServletRequest req,@ModelAttribute LoginDTO dto) {
		ModelAndView mav = new ModelAndView("home");
		int res = loginMapper.memberInput(dto);
		System.out.print(dto.getName());
		return mav;
	}
	@RequestMapping("member_find.do")
	public String memberFind() {
		return "login/member_find";
	}
	@RequestMapping("member_find_ok.do")
	public String memberFindOk(LoginDTO dto,HttpServletRequest req) {
		String eamil = req.getParameter("email");
		LoginDTO getMember = loginMapper.getMember(dto);
		String password = getMember.getPassword();
		req.setAttribute("password", password);
		return "login/member_find_ok.do";
	}
	
	
}
