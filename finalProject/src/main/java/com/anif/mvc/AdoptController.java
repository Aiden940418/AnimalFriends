package com.anif.mvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.anif.mvc.adopt.ACommentBiz.ACommentBiz;
import com.anif.mvc.adopt.ACommentDto.ACommentDto;
import com.anif.mvc.adopt.biz.AdoptBiz;
import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.member.dto.MemberDto;

@Controller
public class AdoptController {

	@Autowired
	private AdoptBiz biz;
	
	@Autowired
	private ACommentBiz abiz;

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
		
		//카운트 
		
		biz.viewCount(aNo);
		
		
		//입양공고 detail
		model.addAttribute("dto",biz.adoptDetail(aNo));
		
		
		//입양공고 댓글 
		List<ACommentDto> replyList = abiz.aCommentList(aNo);
		
		model.addAttribute("reply", replyList);


		
		return "adopt/adopt_detail";

	}
	
	
	//나의 입양공고 상세보기 
	
	@RequestMapping(value="myAdoptDetail.do", method = RequestMethod.GET)
	public String myAdoptDerail(Model model, int aNo) {
		
		//카운트 
		
		biz.viewCount(aNo);
		
		//나의 입양공고 불러오기 
		
		model.addAttribute("dto",biz.adoptDetail(aNo));
		
		//입양공고 댓글 
		List<ACommentDto> replyList = abiz.aCommentList(aNo);
		
		model.addAttribute("reply", replyList);
		
		return "mypage/mypage_myadoptDetail";
		
	}
	// 입양공고작성 가져오기
	@RequestMapping(value="myAdoptWriteForm.do")
	public String myadoptWriteForm() {
		return "mypage/mypage_myadoptWriteForm";
	}
	
	// 입양공고 등록
	@RequestMapping(value="myAdoptWriteRes.do", method = RequestMethod.GET)
	public String myadoptWrite(AdoptDto dto,HttpSession session) {
		
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		
		int res = biz.myadoptWrite(dto);

		if (res > 0) {

			return "redirect:myAdoptList.do?mNo="+memberDto.getmNo();
		} else {
			return "redirect:myAdoptWriteForm.do";
		}

	}
	
	 //입양공고 수정 가져오기
	@RequestMapping(value="myAdoptUpdateForm.do", method = RequestMethod.GET)
	public String myadoptUpdateForm(Model model, int aNo) {
		
		model.addAttribute("dto",biz.myAdoptDetail(aNo));
		return "mypage/mypage_myadoptUpdateForm";
	}


	 //입양공고 수정 등록
	@RequestMapping(value="myAdoptUpdateRes.do", method = RequestMethod.GET)
	public String adoptUpdateRes(AdoptDto dto) {
		

		int res = biz.myAdoptUpdate(dto);

		if (res > 0) {
			return "redirect:myAdoptDetail.do?aNo="+dto.getaNo();
		} else {
			return "redirect:myAdoptUpdateForm.do?aNo="+dto.getaNo();
		}
		
	
	
	}
	
	
	
	
	//나의 입양공고 보기 
	
	@RequestMapping("/myAdoptList.do")
	public String myAdoptList(Model model, int mNo) {
		


	model.addAttribute("list",biz.myAdoptList(mNo));
		
		
		
		
		return "mypage/mypage_myadoptList";
	}
	

	
	//나의 입양공고 삭제
	
	@RequestMapping("/myAdoptDelete.do")
	public String myAdoptDelete(int aNo,HttpSession session) {
		
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		
		
		int res = biz.myAdoptDelete(aNo);
		
		if(res>0) {
			return "redirect:myAdoptList.do?mNo="+memberDto.getmNo();
			
		}else {
					
			return "redirect:myAdoptDetail.do?aNo="+aNo;
			
		}
		
		
		
		
	}
	
	
	
	//ADOPT COMMENT INSERT

	
	@RequestMapping(value="/aCommentInsert.do", method= RequestMethod.GET)
	public String aCommentInsert(ACommentDto comDto) {
		
		int res = abiz.aCommentInsert(comDto);
		
		if(res>0) {
			return "redirect:adoptDetail.do?aNo="+comDto.getaNo();
		}else {

			return "redirect:adoptDetail.do?aNo="+comDto.getaNo();

		}
		
		
	}
	
	
	
	//ADOPT COMMENT DELETE
	
	@RequestMapping(value="/aCommentDelete.do", method= RequestMethod.GET)
	public String aCommentDelete(ACommentDto comDto) {
		
		
		int res = abiz.aCommentDelete(comDto);
		
		if(res>0) {
			
		return "redirect:adoptDetail.do?aNo="+comDto.getaNo();

			
		}else
		
		return "redirect:adoptDetail.do?aNo="+comDto.getaNo();

	}
	
	
	
	// 관리자 입양공고 상세보기
	@RequestMapping(value="adminAdoptDetail.do", method = RequestMethod.GET)
	public String adminAdoptDetail(Model model, int aNo) {
		
		//카운트 
		
		biz.viewCount(aNo);
		
		
		//입양공고 detail
		model.addAttribute("dto",biz.adoptDetail(aNo));
		
		
		//입양공고 댓글 
		List<ACommentDto> replyList = abiz.aCommentList(aNo);
		
		model.addAttribute("reply", replyList);


		
		return "admin/admin_adoptDetail";

	}
	
	// admin입양공고 목록보기 
	@RequestMapping(value = "/adminAdopt.do")
	public String adminAdopt(Model model) {
		
		model.addAttribute("list",biz.adoptList());
		
		
		return "admin/admin_adoptList";
	}
	


}
