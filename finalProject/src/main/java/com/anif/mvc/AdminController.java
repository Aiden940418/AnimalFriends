package com.anif.mvc;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.common.pagination.PageMaker;
import com.anif.mvc.member.biz.MemberBiz;
import com.anif.mvc.diary.biz.DiaryBiz;
import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.qnaBoardAdmin.biz.QnaBoardAdminBiz;
import com.anif.mvc.qnaBoardAdmin.dto.QnaBoardAdminDto;

@Controller
public class AdminController {

	
	private Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private QnaBoardAdminBiz biz;
	@Autowired
	private DiaryBiz diaryBiz;

	
	//adminAdopt
	
	@Autowired
	private MemberBiz bizM;

	

	
	//관리자 유저리스트 	
	@RequestMapping("/adminUserList.do")
	public String adminUserList(Model model) {
		

		model.addAttribute("list",bizM.userList());

		
		return "admin/admin_userList";
	}
	

	
	
	//관리자 입양일기 리스트 조회
	@RequestMapping("/adminDiary.do")
	public String adminDiary(Model model, HttpSession session) {
		logger.info("Mypage Mydiary SELECT LIST");
		
		//현재 로그인 되어있는 계정의 회원번호를 가져오기
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		int mNo = memberDto.getmNo();
		
		model.addAttribute("memberDto", memberDto); 
		model.addAttribute("list", diaryBiz.adminDiarySelectList()); 
		
		return "admin/admin_diary";
	}
	
	//관리자 입양일기 삭제
	@RequestMapping("/adminDiaryDelete.do")
	public String adminDiaryDelete(Model model, int dno) {
		logger.info("Admin Diary DELETE");
		
		int res = diaryBiz.adminDiaryDelete(dno);
		
		if (res > 0) { // 글 insert 성공 시
			model.addAttribute("msg", "글 삭제 성공!");
			model.addAttribute("url", "/adminDiary.do");
		} else {  //글 insert 실패 시
			model.addAttribute("msg", "글 삭제 실패!");
			model.addAttribute("url", "/adminDiary.do");
		}
		
		return "/mypage/alertPage";
	}
	
	

	
/*	관리자 굿즈 등록 
	@RequestMapping("/adminGoodsWrite.do")
	public String adminGoodsWrite(Model model) {
		
		return "admin/admin_goodsWrite";
	}
*/	
	
	
	//Admin QnA Start
	
	
	//Admin qna list(selectList)
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
	
	
	//Admin qna detail(selectOne)
	@RequestMapping("/adminQnaDetail.do")
	public String adminQnaDetail(Model model, int qno) {
		logger.info("QnA Admin SELECT ONE");
		
		model.addAttribute("dto", biz.selectOne(qno));
		
		return "admin/admin_qnaDetail";
	}
	
	
	//Admin qna writeForm(qnaWrite-일반 글쓰기)
	@RequestMapping("/adminQnaWriteForm.do")
	public String adminQWriteForm() {
		logger.info("QnA Admin INSERT FORM");
		
		return "admin/admin_qnaWrite";
	}
	
	
	//Admin qna writeRes(qnaWrite-일반 글쓰기)
	@RequestMapping("/adminQnaWriteRes.do")
	public String adminQWriteRes(QnaBoardAdminDto dto, HttpSession session ,Model model) {
		logger.info("QnA Admin INSERT");
		
		//현재 로그인 되어있는 계정의 회원번호를 가져와서 dto에 세팅해주기
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		dto.setMno(memberDto.getmNo());
				
		int res = biz.insert(dto);

		if (res > 0) { // 글 insert 성공 시
		model.addAttribute("msg", "글 등록 성공!");
		model.addAttribute("url", "/adminQnaList.do");
		} else {  //글 insert 실패 시
		model.addAttribute("msg", "글 등록 실패!");
		model.addAttribute("url", "/adminQnaWriteForm.do");
		}
		
		return "/mypage/alertPage";
	}
	
	
	//Admin qna writeAnswerForm(aWriteAnswer-답변하기)
	@RequestMapping("/adminAWriteForm.do")
	public String adminAWriteForm(Model model, int qno) {
		logger.info("QnA Admin Answer INSERT FORM");
		
		model.addAttribute("answerQno", qno);
		
		return "admin/admin_qnaWriteAnswer";
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
	
	
	
	
	//Admin qna writeAnswerRes(aWriteAnswer-답변하기)
	@RequestMapping("/adminAWriteRes.do")
	public String adminAWriteRes(QnaBoardAdminDto dto, HttpSession session, Model model) throws IOException{
		logger.info("QnA Admin Answer INSERT");

		//현재 로그인 되어있는 계정의 회원번호를 가져와서 dto에 세팅해주기
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		dto.setMno(memberDto.getmNo());
		
		int res = biz.insertAnswer(dto);
		
		if (res > 0) { // 글 insert 성공 시
			model.addAttribute("msg", "글 등록 성공!");
			model.addAttribute("url", "/adminQnaList.do");
			} else {  //글 insert 실패 시
			model.addAttribute("msg", "글 등록 실패!");
			model.addAttribute("url", "/adminQnaWriteForm.do");
			}
			
			return "/mypage/alertPage";
	}
	
	
	//Admin qna updateForm(update)
	@RequestMapping("/adminQnaUpdate.do")
	public String adminQnaUpdate(Model model) {
		
		return "admin/admin_qnaUpdate";
	}
	
	//Admin QnA End
	
}
