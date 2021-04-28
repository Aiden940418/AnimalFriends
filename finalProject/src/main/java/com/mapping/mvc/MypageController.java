package com.mapping.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	
	
	@RequestMapping("/chattingList.do")
	public String chatList() {
		
		
		return "mypage/mypage_chattingList";
	}
	
	@RequestMapping("/chattingDetail.do")
	public String chatDetail() {
		
		
		return "mypage/mypage_chattingDetail";
	}
	
	// Diary Start 
	
	@RequestMapping("/mydiary.do")
	public String myDiary() {
		
		
		return "mypage/mypage_mydiary";
	}
	
	
	@RequestMapping("/mydiaryDetail.do")
	public String mydiaryDetail() {
		
		return "mypage/mypage_mydiaryDetail";
	}
	
	@RequestMapping("/mydiaryWriteForm.do")
	public String mydiaryWriteForm() {
		return "mypage/mypage_mydiaryWriteForm";
	}
	
	@RequestMapping("/mydiaryUpdateForm.do")
	public String mydiaryUpdateForm() {
		return "mypage/mypage_mydiaryUpdateForm";
	}
	
	
	// Diary End
	
	
	//Adopt Start 
	
	@RequestMapping("/myAdoptList.do")
	public String myAdoptList() {
		
		
		return "mypage/mypage_myadoptList";
	}
	
	@RequestMapping("/myAdoptUpdateForm.do")
	public String myAdoptUpdateForm() {
		
		return "mypage/mypage_myadoptWriteForm";
	}
	
	
	//Adopt End 
	@RequestMapping("/myCartList.do")
	public String myCartList() {
		
		
		return "mypage/mypage_mycartList";
	}
	
	@RequestMapping("/myGoodsBuyList.do")
	public String myGoodsBuyList() {
		
		return "mypage/mypage_mygoodsBuyList";
	}
	

	
	
	@RequestMapping("/myMemberModityPw.do")
	public String myMemberModityPw() {
		
		
		return "mypage/mypage_memberModifyPWCheck";
	}
	
	
	
	@RequestMapping("/myNoticeList.do")
	public String myNoticeList() {
		
		return "/mypage/mypage_noticeList";
	}
	
	
	@RequestMapping("/myNoticeDetail.do")
	public String myNoticeDetail() {
		
		return "/mypage/mypage_noticeDetail";
	}
	
	    
	
	
	
}
