package com.mapping.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdoptController {
	
	
	private Logger logger = LoggerFactory.getLogger(AdoptController.class);
	
	
	
	
	@RequestMapping("/adoptDetail.do")
	public String adoptDetail(Model model) {
		
		return "adopt/adopt_detail2";
		
	}

}
