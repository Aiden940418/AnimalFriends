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
import com.anif.mvc.common.pagination.Criteria;
import com.anif.mvc.common.pagination.PageMaker;
import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.utils.UploadFileUtils;

@Controller
public class AdoptController {

	@Autowired
	private AdoptBiz biz;
	
	@Autowired
	private ACommentBiz abiz;
	

	@Resource(name="uploadPath")
	private String uploadPath;  //이미지 업로드 화면출력 관련 
	

	private Logger logger = LoggerFactory.getLogger(AdoptController.class);

	
	// 입양공고 목록보기 
	@RequestMapping(value = "/adopt.do")
	public String adopt(Model model,Criteria cri) {
		
		model.addAttribute("list",biz.adoptList(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int listCount = biz.adoptListCnt();
		pageMaker.setTotalCount(listCount);
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("listCount", listCount);
		
		
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
	
	@RequestMapping(value="myAdoptWriteRes.do")
	public String mydiaryWriteRes(AdoptDto dto, MultipartFile file, HttpSession session, Model model) throws IOException, Exception {
		logger.info("Adopt INSERT");
		
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
		dto.setaImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		dto.setaThumbImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		
		int res = biz.myadoptWrite(dto);

		if (res > 0) { // 글 insert 성공 시
			model.addAttribute("msg", "글 등록 성공!");
			model.addAttribute("url", "/myAdoptList.do");
		} else {  //글 insert 실패 시
			model.addAttribute("msg", "글 등록 실패!");
			model.addAttribute("url", "/myAdoptWriteForm.do");
		}
		
		return "/mypage/alertPage";
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
	//관리자 입양공고 지역-종 카테고리 선택
	@RequestMapping(value="/adminAdoptCtgy.do", method=RequestMethod.GET)
	public String adminAdoptCtgy(Model model,AdoptDto dto) {
		model.addAttribute("list",biz.adoptSelect(dto));
		System.out.println(model);
		
		return "admin/admin_adoptList";
		
		
	}
	
	
	
	
	
	
	
	
	
	//나의 입양공고 보기 
	
	@RequestMapping("/myAdoptList.do")
	public String myAdoptList(Model model, HttpSession session) {
		

	MemberDto memberDto = (MemberDto) session.getAttribute("login");
	
	int mNo = memberDto.getmNo();


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

	
	
	
	
	
	
	
	//관리자 입양공고 다중삭제
	@ResponseBody 
	@RequestMapping(value="/multiDeleteAdopt.do", method= RequestMethod.POST)
	public int multiDeleteAdopt(HttpSession session, @RequestParam(value= "chbox[]") List<String> chArr, 
			AdoptDto dto) {
		
		logger.info("delete Adopt");
		
		MemberDto member = (MemberDto)session.getAttribute("login");
		
		
		int result = 0;
		int aNo = 0;
		
		if(member != null) {
			
			for(String i : chArr) {
				aNo = Integer.parseInt(i);
				dto.setaNo(aNo);
				
				biz.multiDeleteAdopt(dto);
				
			}
			result = 1;
			
			
		}
		
		return result;
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
	public String adminAdopt(Model model,Criteria cri) {
		
		model.addAttribute("list",biz.adoptList(cri));
		
		
		return "admin/admin_adoptList";
	}
	

	
	
	
	

}
