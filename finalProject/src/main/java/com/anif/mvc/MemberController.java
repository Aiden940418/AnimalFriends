package com.anif.mvc;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anif.mvc.member.biz.MemberBiz;
import com.anif.mvc.member.dto.MemberDto;

@Controller
public class MemberController {

	@Autowired
	private MemberBiz biz;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	// 전체멤버 목록보기 
	@RequestMapping(value = "/memberList.do")
	public String memberList(Model model) {
		
		model.addAttribute("list",biz.memberList());	
		return "admin/admin_userList";
	}
	
	// 일반멤버 목록보기 
	@RequestMapping(value = "/iMemberList.do")
	public String iMemberList(Model model) {
		
		model.addAttribute("list",biz.iMemberList());	
		return "admin/admin_userList";
	}
	
	
	// 보호소멤버 목록보기 
	@RequestMapping(value = "/sMemberList.do")
	public String sMemberList(Model model) {
		
		model.addAttribute("list",biz.sMemberList());	
		return "admin/admin_userList";	
		}
	
	// 탈퇴멤버 목록보기 
	@RequestMapping(value = "/qMemberList.do")
	public String quitMemberList(Model model) {
		
		model.addAttribute("list",biz.qMemberList());
		return "admin/admin_userList";
		}
	
	
	
	@RequestMapping(value="/memberDeletePwCheck.do")
	public String memberDeletePwCheck() {
		
		return "mypage/mypage_memberDeletePwCheck";
			
	}
	
	
	
	@RequestMapping(value="/memberDelete.do")
	public String memberDelete(HttpSession session, String mId, String mPw) {
		
		
		logger.info("passwordCheck");
		boolean result = biz.pwChk(mId, mPw);

		if(result) {
			biz.memberDelete(mId);
			
			session.invalidate();
			
			return "main";

			

		}else {
			return "mypage/mypage_memberModifyPWCheck";
		}
		
	}
	/* 비밀번호 찾기 */
	@RequestMapping(value = "/findpw.do", method = RequestMethod.GET)
	public void findPwGET() throws Exception{
	}

	@RequestMapping(value = "/findpw2.do", method = RequestMethod.POST)
	public void findPwPOST(@ModelAttribute MemberDto dto, HttpServletResponse response) throws Exception{
		System.out.println("작동되는거니?");
		System.out.println(dto.toString());
		biz.findPw(response,dto);
	}
	
	
	
	
	
	
	
	
	

}
