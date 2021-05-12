package com.anif.mvc;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.diary.biz.DiaryBiz;
import com.anif.mvc.diary.dto.DiaryDto;

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
	
	
	//무한스크롤 관련 컨트롤러 메소드
	@RequestMapping(value = "/diaryListScroll.do", method = RequestMethod.GET)
	@ResponseBody
	public DiaryDto diaryListScroll(@RequestParam Map<String, String> number) {
		
		int number2 = Integer.parseInt(number.get("number"));
		
		DiaryDto dto = biz.diaryListScroll(number2);
		
		return dto; 
	}
	
	
	
	

}
