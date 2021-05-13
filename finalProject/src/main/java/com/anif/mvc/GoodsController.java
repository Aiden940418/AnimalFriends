package com.anif.mvc;

import java.io.Console;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anif.mvc.goods.biz.GoodsBiz;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.member.dto.MemberDto;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsBiz biz;
	
	private Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	//굿즈 목록 보기
	@RequestMapping(value = "/goodsList.do")
	public String goods(Model model) {
		
		
		logger.info("goodsList실행입니다.");
		
		model.addAttribute("list",biz.goodsList());
		return "goods/goods";
	}
	
	
	//굿즈 상세보기
	@RequestMapping(value = "/goodsDetails.do",method = RequestMethod.GET)
	public String goodsDetail(Model model, int gNo) {
		
		model.addAttribute("dto",biz.goodsDetail(gNo));
		
		return "goods/goods_details";
	}
	
	//관리자 페이지에서 굿즈 리스트
	@RequestMapping(value = "/adminGoodsList.do")
	public String admingoods(Model model) {
		
		logger.info("adminGoods실행입니다.");
		
		model.addAttribute("list",biz.adminGoodsList());
		return "admin/admin_goodsList";
		
		
	}
	
	//관리자 페이지에서 굿즈 리스트 상세
	@RequestMapping(value = "adminGoodsDetail.do", method = RequestMethod.GET)
	public String adminGoodsDetail(Model model, int gNo) {
		
		model.addAttribute("dto",biz.adminGoodsDetail(gNo));
		return "admin/admin_goodsDetail";
	}
	
	//관리자 페이지에 굿즈 상품등록 가져오기
	@RequestMapping(value = "adminGoodsWriteForm.do")
	public String adminGoodsWriteForm() {
		return "admin/admin_goodsWrite";
		
	}

	//관리자 페이지에 굿즈 상품등록
	@RequestMapping(value = "adminGoodsWriteRes.do", method = RequestMethod.GET)
	public String admin_goodsWrite(GoodsDto dto, HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("login"); 
		
		int res = biz.adminGoodsWrite(dto);
		
		if(res>0) {
			return "redirect:adminGoodsList.do?mNo="+memberDto.getmNo();
		}else {
			return "redirect:adminGoodsWriteForm.do";
		}
		
		
	}
	//관리자 굿즈 수정 가져오기
	@RequestMapping(value = "adminGoodsUpdateForm.do",method = RequestMethod.GET)
	public String adminGoodsUpdateForm(Model model, int gNo) {		

	model.addAttribute("dto",biz.adminGoodsDetail(gNo));
		return "admin/admin_goodsUpdate";
	}
	
	//관리자 굿즈 수정 
	@RequestMapping(value = "adminGoodsUpdateRes.do",method = RequestMethod.GET)
	public String adminGoodsUpdate(GoodsDto dto) {

		int res = biz.adminGoodsUpdate(dto);
		
		if(res > 0) {
			return "redirect:adminGoodsDetail.do?gNo="+dto.getgNo();
		}else {
			return "redirect:adminGoodsUpdateForm.do?gNo="+dto.getgNo();
		}
	}
	
	//관리자 굿즈 삭제
	@RequestMapping("/adminGoodsDelete.do")
	public String adminGoodsDelete(int gNo,HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		int res = biz.adminGoodsDelete(gNo);
		
		if(res>0) {
			return "redirect:adminGoodsList.do?gNo="+memberDto.getmNo();
		}else
		
		return "redirect:adminGoodsDetail.do?gNo="+gNo;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/goodsPayment.do")
	public String goodsPayment(Model model) {
		
		
		
		return "goods/goods_payment";
	}
	
	@RequestMapping("/goodsPurchase.do")
	public String goodsPurchase(Model model) {
		
		
		
		return "goods/goods_purchase";
	}
	
	
	
	
	
	
	

}
