package com.anif.mvc;

import java.util.List;

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

	
	// 입양공고 목록보기 
	@RequestMapping(value = "/adopt.do")
	public String adopt(Model model) {
		
		model.addAttribute("list",biz.adoptList());
		
		
		return "adopt/adopt";
	}
	
	
	// 입양공고 상세보기
	@RequestMapping(value="adoptDetail.do", method = RequestMethod.GET)
	public String adoptDetail(Model model, int aNo) {
		
		
		model.addAttribute("dto",biz.adoptDetail(aNo));
		
		return "adopt/adopt_detail2";

	}
	// 입양공고작성 가져오기
	@RequestMapping(value="myAdoptWriteForm.do")
	public String myadoptWriteForm() {
		return "mypage/mypage_myadoptWriteForm";
	}
	
	// 입양공고 등록
	@RequestMapping(value="myAdoptWriteRes.do", method = RequestMethod.GET)
	public String myadoptWrite(AdoptDto dto) {
		
		int res = biz.myadoptWrite(dto);

		if (res > 0) {

			return "redirect:adopt.do";
		} else {
			return "redirect:myAdoptWriteForm.do";
		}

	}
//	@RequestMapping(value="myAdoptUpdateForm.do")
//	public String myadoptUpdateForm() {
//		return "mypage/mypage_myadoptUpdateForm";
//	}


	// 입양공고 수정
	@RequestMapping(value="myAdoptUpdateForm.do", method = RequestMethod.GET)
	public String updateForm(AdoptDto dto) {
		
		int res = biz.myadoptUpdate(dto);

		if (res > 0) {
			return "redirect:adopt.do";
		} else {
			return "redirect:myAdoptUpdateForm.do";
		}
		
	
	
	}
	
	
	
	
	// 입양공고 삭제

}
