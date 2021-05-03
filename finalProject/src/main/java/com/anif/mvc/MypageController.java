package com.anif.mvc;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.qnaBoard.biz.QnaBoardBiz;
import com.anif.mvc.qnaBoard.dto.QnaBoardDto;

@Controller
public class MypageController {
	
	//로그 사용 위한 logger 
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private QnaBoardBiz biz;
	
	
	
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
	
	
	//QnA Start
	
	@RequestMapping("/myQnaList.do")
	public String myQnaList(Model model) {
		logger.info("QnA SELECT LIST");
		model.addAttribute("list", biz.selectList());
		
		return "/mypage/mypage_qnaList";
	}
	
	
	@RequestMapping("/myQnaDetail.do")
	public String myQnaDetail(Model model, int qno) {
		logger.info("QnA SELECT ONE");
		model.addAttribute("dto", biz.selectOne(qno));
		
		return "/mypage/mypage_qnaDetail";
	}
	
	@RequestMapping("/myQnaWriteForm.do")
	public String myQnaWriteForm() {
		logger.info("QnA INSERT FORM");
		
		return "/mypage/mypage_qnaWrite";
	}
	
	@RequestMapping("/myQnaWriteRes.do")
	public String myQnaWriteRes(QnaBoardDto dto, HttpSession session) {
		// System.out.println(dto.toString());
		logger.info("QnA INSERT");
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		int res = biz.insert(dto, memberDto.getmNo());

		if (res > 0) { // 글 insert 성공 시
			return "redirect:myQnaList.do";
		} else {
			return "redirect:myQnaWriteForm.do";
		}
	}
	
	@RequestMapping("/myQnaUpdate.do")
	public String myQnaUpdate() {
		
		return "/mypage/mypage_qnaUpdate";
	}
	
	@RequestMapping("/myQnaDelete.do")
	public String myQnaDelete(int qno) {
		logger.info("QnA DELETE");
		
		int res = biz.delete(qno);
		
		if(res>0) {
			return "redirect:myQnaList.do"; 
		}else {
			return "redirect:myQnaDetail.do?qno="+qno;
		}
		
	}
	
	//QnA End
	
	
	
}
