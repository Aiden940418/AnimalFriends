package com.anif.mvc;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.anif.mvc.adopt.ACommentBiz.ACommentBiz;
import com.anif.mvc.adopt.ACommentDto.ACommentDto;
import com.anif.mvc.adopt.biz.AdoptBiz;
import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.member.biz.MemberBiz;
import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.utils.UploadFileUtils;

@Controller
public class MemberController {

	@Autowired
	private MemberBiz biz;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	// 일반멤버 목록보기 
	@RequestMapping(value = "/memberList.do")
	public String memberList(Model model) {
		
		model.addAttribute("list",biz.memberList());	
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
	
	
	
	
	
	
	
	
	
	
	

}
