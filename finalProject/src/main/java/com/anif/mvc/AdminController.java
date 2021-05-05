package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.common.pagination.PageMaker;
import com.anif.mvc.qnaBoardAdmin.biz.QnaBoardAdminBiz;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

@Controller
public class AdminController {

	
	private Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private QnaBoardAdminBiz biz;

	
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
	
	
	//관리자 qna
	
	@RequestMapping("/adminQnaList.do")
	public String adminQnaList(Model model, Criteria cri) {
		logger.info("QnA Admin SELECT LIST");
		
		model.addAttribute("list", biz.selectList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int listCount = biz.listCount();
		pageMaker.setTotalCount(listCount);
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("listCount", listCount);
		
		return "admin/admin_qnaList";
	}
	
	
	//관리자 qna detail
	@RequestMapping("/adminQnaDetail.do")
	public String adminQnaDetail(Model model, int qno) {
		logger.info("QnA Admin SELECT ONE");
		model.addAttribute("dto", biz.selectOne(qno));
		
		return "admin/admin_qnaDetail";
	}
	
	
	
	//관리자 qna 등록 
	@RequestMapping("/adminQnaWrite.do")
	public String adminQnaWrite(Model model) {
		
		
		return "admin/admin_qnaWrite";
		
	}
	
	
	//관리자 qna 수정폼
	@RequestMapping("/adminQnaUpdateForm.do")
	public String adminQnaUpdateForm(Model model, int qno) {
		logger.info("QnA Admin UPDATE FORM");
		
		model.addAttribute("dto", biz.selectOne(qno));

		return "admin/admin_qnaUpdateForm";
	
	}
	
	//관리자 qna 수정결과
	@RequestMapping("/adminQnaUpdateRes.do")
	public String adminQnaUpdateRes(QnaBoardAdminDto dto) {
		logger.info("QnA Admin UPDATE RESULT");
		
		int res = biz.update(dto);
		
		if(res>0) {
			return "redirect:adminQnaDetail.do?qno="+dto.getQno();
		}else {
			return "redirect:adminQnaUpdateForm.do?qno="+dto.getQno();
		}
		
	}
	
	//관리자 qna 삭제
	@RequestMapping("/adminQnaDelete.do")
	public String adminQnaDelete(int qno) {
		logger.info("QnA Admin DELETE");
		
		int res = biz.delete(qno);
		
		if(res>0) {
			return "redirect:adminQnaList.do"; 
		}else {
			return "redirect:adminQnaDetail.do?qno="+qno;
		}
		
	}
	
	
	
	
	
}
