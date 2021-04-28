package com.mapping.mvc;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/hello.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model) {

		
		return "main";
	}
	
	
	@RequestMapping(value = "/adopt.do", method = RequestMethod.GET)
	public String adopt(Model model) {
		return "adopt/adopt";
	}
	
	
	@RequestMapping(value = "/shelter.do", method = RequestMethod.GET)
	public String shelter(Model model) {
		return "shelter/shelter";
	}
	
	@RequestMapping(value = "/goods.do", method = RequestMethod.GET)
	public String goods(Model model) {
		return "goods/goods";
	}
	
	
	@RequestMapping(value = "/diary.do", method = RequestMethod.GET)
	public String diary(Model model) {
		return "diary/diary";
	}
	
	@RequestMapping(value = "/admin.do", method = RequestMethod.GET)
	public String admin_diary(Model model) {
		return "admin/admin_adoptList";
	}

	
	@RequestMapping(value = "/logo.do", method = RequestMethod.GET)
	public String logo(Model model) {
		return "main";
	}
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}
	
	

	
	
	
	
	
	
	
}
