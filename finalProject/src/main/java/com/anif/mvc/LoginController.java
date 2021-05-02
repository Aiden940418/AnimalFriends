package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	 private Logger logger = LoggerFactory.getLogger(LoginController.class);
	 

	 
	 
	 
	 @RequestMapping("/register.do")
	 public String register(Model model) {
		 
		 
		 
		 
		 return "signUp_user";
		 
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
	
	@RequestMapping
	public String idChk(String mId) {
		
		
		return null;
	}
	
	@RequestMapping(value="/signUps.do", method = RequestMethod.GET) 
	
	public String signUps(MemberDto dto){
		
		int res = 0;
		
		res = biz.signUp(dto);
		
		if(res>0) {
			
			return "redirect:loginForm.do";
			
		}else {
			return "redirect:signUpForm.do";
		}
		
		
	}
	 
	 
		@RequestMapping(value = "/loginForm.do", method = RequestMethod.GET)
		public String login(Model model) {
			return "login";
		}
		
		
		
		@RequestMapping(value="/ajaxlogin.do",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Boolean> ajaxLogin(HttpSession session, @RequestBody MemberDto dto) {
			//데이터를 json으로 받는거였는데 memberdto로 자바객체 전환이 필요하다 -> RequestBody를 달아준다 
			//Request 반대는 response 바디도 있다--> 자바 객체를 json으로 바인딩 하겠따! 그래서 뭘! 
			
			
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


