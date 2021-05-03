package com.anif.mvc;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.member.biz.MemberBiz;
import com.anif.mvc.member.dto.MemberDto;

@Controller
public class LoginController {
	
	 private Logger logger = LoggerFactory.getLogger(LoginController.class);
	 
	 
	 @Autowired
	 private MemberBiz biz;
	 
	 
	 
	 @RequestMapping("/signUpForm.do")
	 public String signUpForm(MemberDto dto) {
		 
		 
		 
		 
		 return "signUp";
		 
	 }
	 
	 
	 
	@RequestMapping(value="/signUp.do", method = RequestMethod.GET) 
	
	public String signUp(MemberDto dto){
		
		int res = 0;
		
		res = biz.signUp(dto);
		
		if(res>0) {
			
			return "redirect:loginForm.do";
			
		}else {
			return "redirect:signUpForm.do";
		}
		
		
	}

//	@RequestMapping
//	public String idChk(String mId) {
//		
//		
//		return null;
//	}
//	
	@RequestMapping(value="/signUps.do", method = RequestMethod.GET) 
	
	public String signUps(MemberDto dto){
		
		int res = 0;
		
		res = biz.signUp(dto);
		
		if(res>0) {
			
			return "redirect:loginForm.do";
			
		}else {
			return "redirect:signUp.do";
		}
		
		
	}
	 
	 
		@RequestMapping(value = "/loginForm.do")
		public String login(MemberDto dto) {
			return "login";
		}
		
		
		
		@RequestMapping(value="/login.do",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Boolean> ajaxLogin(HttpSession session, @RequestBody MemberDto dto) {
	 
			
			
			logger.info("LOGIN");
			
			MemberDto res = biz.login(dto);
			
			boolean check = false;
			
			//제대로된 로그인이 된것 res가 null이 아니면 
			if(res != null) {
				session.setAttribute("login", res);
				
				check=true;
				
			}
			
			
			
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		
		map.put("check", check);
			
			
			
			
			
			
			return map;
		}
	
	
}


