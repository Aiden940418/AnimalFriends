package com.anif.mvc;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.diary.biz.DiaryBiz;
import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.diary.dto.DiaryReplyDto;

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
	public List<DiaryDto> diaryListScroll(@RequestParam Map<String, String> number) {
		
		int startNumber = Integer.parseInt(number.get("startNumber"));
		int endNumber = Integer.parseInt(number.get("endNumber"));
		
		List<DiaryDto> list = biz.diaryListScroll(startNumber, endNumber);
		
		return list; 
	}
	
	
	
	//댓글, 댓글의 답글 관련
	@ResponseBody
	@RequestMapping(value = "/DRselectList.do", method = RequestMethod.POST)
	public List<DiaryReplyDto> DRselectList(@RequestBody DiaryReplyDto dto){
		System.out.println(dto);
		logger.info("Diary Reply SELECT LIST");
		
		List<DiaryReplyDto> list = null;
		list = biz.DRselectList(dto.getDno());
		
		System.out.println(list);
		
		
		return list;
		
		
	}
	
	
	
	
	
	
	

}
