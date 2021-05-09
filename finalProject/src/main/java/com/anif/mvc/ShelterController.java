package com.anif.mvc;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShelterController {

	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	
	@RequestMapping(value = "/apiData.do", method = RequestMethod.GET)
	public String apiData(Model model) {
		return "shelter/apiData";
	}
	
	
	
	
	

}
