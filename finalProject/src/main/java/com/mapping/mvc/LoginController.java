package com.mapping.mvc;

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
	
	
}


