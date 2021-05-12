package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anif.mvc.diary.biz.DiaryBiz;

@Controller
public class DiaryController {
	
	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private DiaryBiz biz;
	
	@RequestMapping(value = "/diaryList.do", method = RequestMethod.GET)
	public String diary(Model model) {
		logger.info("Diary SELECT LIST");
		
		model.addAttribute("list", biz.selectList());
		
		
		return "diary/diaryList";
	}
	
	

}
