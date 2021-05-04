package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anif.mvc.adopt.biz.AdoptBiz;
import com.anif.mvc.adopt.dto.AdoptDto;

@Controller
public class AdoptController {

	@Autowired
	private AdoptBiz biz;

	private Logger logger = LoggerFactory.getLogger(AdoptController.class);

	// 입양공고 상세보기
	@RequestMapping(value="/adopt/adoptDetail.do", method = RequestMethod.GET)
	public String adoptDetail(AdoptDto dto) {

		return "adopt/adopt_detail2";

	}

	// 입양공고 등록
	@RequestMapping(value="/mypage/mypage_myadoptWriteForm.do", method = RequestMethod.GET)
	public String myadoptWrite(AdoptDto dto) {
		
		int res = biz.myadoptWrite(dto);

		if (res > 0) {

			return "redirect:adopt.do";
		} else {
			return "redirect:myadoptWriteForm.do";
		}

	}

	// 입양공고 수정
	@RequestMapping(value="/mypage/mypage_myadoptUpdateForm.do", method = RequestMethod.GET)
	public String updateForm(AdoptDto dto) {
		
		int res = biz.myadoptUpdate(dto);

		if (res > 0) {
			return "redirect:adopt.do";
		} else {
			return "redirect:myadoptUpdateForm.do";
		}
		
	
	
	}
	
	
	
	
	// 입양공고 삭제

}
