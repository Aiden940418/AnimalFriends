package com.mapping.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	private Logger logger = LoggerFactory.getLogger(AdminController.class);

	
	//adminAdopt
	
	@RequestMapping("/adminAdopt.do")
	public String adminAdopt(Model model) {
		
		
		
		return "admin/admin_adoptList";
	}
	
	
	//관리자 유저리스트 	
	@RequestMapping("/adminUserList.do")
	public String adminUserList(Model model) {
		
		return "admin/admin_userList";
	}
	

	
	//관리자 입양일기

	@RequestMapping("/adminDiary.do")
	public String adminDiary(Model model) {
		
		return "admin/admin_diary";
	}
	
	
	//관리자 공지사항
	
	@RequestMapping("/adminNoticeList.do")
	public String adminNoticeList(Model model) {
		
		return "admin/admin_noticeList";
	}
	
	//관리자 공지사항 detail

	@RequestMapping("/adminNoticeDetail.do")
	public String adminNoticeDetail(Model model) {
		
		return "admin/admin_noticeDetail";
	}
	
	
	
	//관리자 공지사항 등록 
	@RequestMapping("/noticeWrite.do")
	public String noticeWrite(Model model) {
		
		
		return "admin/admin_noticeWrite";
		
	}
	
	
	//관리자 공지사항 수정 
	@RequestMapping("/adminNoticeUpdate.do")
	public String adminNoticeUpdate(Model model) {
		
		return "admin/admin_noticeUpdate";
	
	
	}
	
	
	//관리자 굿즈 목록
	@RequestMapping("/adminGoodsList.do")
	public String adminGoodsList(Model model) {
		
		return "admin/admin_goodsList";
	}
	
	
	//관리자 굿즈 상세보기 
	
	@RequestMapping("/adminGoodsDetail.do")
	public String adminGoodsDetail(Model model) {
		
		return "admin/admin_goodsdetail";
	}
	
	
	//관리자 굿즈 등록 
	@RequestMapping("/adminGoodsWrite.do")
	public String adminGoodsWrite(Model model) {
		
		return "admin/admin_goodsWrite";
	}
	
	
	//관리자 굿즈 수정 
	
	
	@RequestMapping("/adminGoodsUpdate.do")
	public String adminGoodsUpdate() {
		
		return "admin/admin_goodsUpdate";
	}
	
	
	
}
