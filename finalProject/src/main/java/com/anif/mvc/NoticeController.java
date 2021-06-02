package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.anif.mvc.notice.dao.NoticeDao;
import com.anif.mvc.notice.dto.NoticeDto;

@Controller
public class NoticeController {
	
	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
		
	@Autowired
	NoticeDao noticeDao;
	
	//db에 알림 내용 insert
	@RequestMapping("/noticeInsert.do")
	@ResponseBody
	public void noticeInsert(NoticeDto noticeDto) {
		logger.info("noticeInsert");
		
		logger.info("===================== noticeInsert 실행 !!");
		
		noticeDao.noticeInsert(noticeDto);
		
	}
	
	
		
		

}
