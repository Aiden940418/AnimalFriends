package com.anif.mvc;

import java.io.Console;
import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.goods.biz.GoodsBiz;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.utils.UploadFileUtils;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsBiz biz;
	

	@Resource(name="uploadPath")
	private String uploadPath;  //이미지 업로드 화면출력 관련 
	
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
	
	
	@RequestMapping(value = "adminGoodsWriteRes.do")
	public String admin_goodsWriteRes(GoodsDto dto, MultipartFile file, HttpSession session, Model model) throws IOException, Exception {
		logger.info("admin_goods INSERT");
		
		//현재 로그인 되어있는 계정의 회원번호를 가져와서 dto에 세팅해주기
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		
		//이미지 업로드 관련
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		if(file != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		dto.setgImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		dto.setgThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		
		int res = biz.adminGoodsWrite(dto);


		if (res > 0) { // 글 insert 성공 시
			model.addAttribute("msg", "글 등록 성공!");
			model.addAttribute("url", "/adminGoodsList.do?mNo=+memberDto.getmNo();");
		} else {  //글 insert 실패 시
			model.addAttribute("msg", "글 등록 실패!");
			model.addAttribute("url", "/adminGoodsWriteForm.do");
		}
		
		return "/mypage/alertPage";
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
