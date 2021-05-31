package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NoticeController {
	
	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
		
	
	//db에 알림 내용 insert
//	@RequestMapping("/notice.do")
//	@ResponseBody
//	public void noticeInsert(@RequestBody NoticeDto noticeDto) {
//		
//		
//		
//		
//	}
	
	
	@RequestMapping("/notice.do")
	@ResponseBody
	public void noticeInsert() {
		
		
		
		
	}
	
		
		

}
