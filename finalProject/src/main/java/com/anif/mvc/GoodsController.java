package com.anif.mvc;

import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.anif.mvc.diary.dto.DiaryDto;
import com.anif.mvc.goods.biz.CartBiz;
import com.anif.mvc.goods.biz.GoodsBiz;
import com.anif.mvc.goods.biz.ReviewBiz;
import com.anif.mvc.goods.dto.CartDto;
import com.anif.mvc.goods.dto.CartListDto;
import com.anif.mvc.goods.dto.GoodsDto;
import com.anif.mvc.goods.dto.GoodsOrderDto;
import com.anif.mvc.goods.dto.OrderDetailDto;
import com.anif.mvc.goods.dto.ReviewDto;
import com.anif.mvc.member.dto.MemberDto;
import com.anif.mvc.utils.UploadFileUtils;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsBiz biz;
	@Autowired
	private CartBiz cartBiz;
	@Autowired
	private ReviewBiz reviewBiz;
	

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
		model.addAttribute("review",reviewBiz.reviewList(gNo));
		
		return "goods/goods_details";
	}
	
	
	
	
	
	//관리자 페이지에서 굿즈 리스트
	@RequestMapping(value = "/adminGoodsList.do")
	public String admingoods(Model model) {
		
		logger.info("adminGoods실행입니다.");
		
		model.addAttribute("list",biz.adminGoodsList());
		return "admin/admin_goodsList";
		
		
	}
	//굿즈 카테고리 리스트 보기
	@RequestMapping(value = "/goodsBagList.do")
	public String goodsBagList(Model model) {
				
		model.addAttribute("list",biz.goodsBagList());
		return "goods/goods";	
	}
	@RequestMapping(value = "/goodsClothList.do")
	public String goodsClothList(Model model) {
				
		model.addAttribute("list",biz.goodsClothList());
		return "goods/goods";	
	}
	@RequestMapping(value = "/goodsAccList.do")
	public String goodsAccList(Model model) {
				
		model.addAttribute("list",biz.goodsAccList());
		return "goods/goods";	
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
			model.addAttribute("url", "/adminGoodsList.do?mNo=memberDto.getmNo();");
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
	
	//관리자 굿즈 다중 삭제
	@ResponseBody 
	@RequestMapping(value="/multiDeleteGoods.do", method= RequestMethod.POST)
	public int multiDeleteGoods(HttpSession session, @RequestParam(value= "chbox[]") List<String> chArr, 
			GoodsDto dto) {
		
		logger.info("delete Goods");

		
		
		MemberDto member = (MemberDto)session.getAttribute("login");
		
		
		int result = 0;
		int gNo = 0;
		
		if(member != null) {
			
			for(String i : chArr) {
				gNo = Integer.parseInt(i);
				dto.setgNo(gNo);
				
				biz.multiDeleteGoods(dto);
				
			}
			result = 1;
			
			
		}
		
		return result;
	}
	
	
	
	
	
	
	//카트에 담기
	@ResponseBody
	@RequestMapping(value = "/addCart.do",method= RequestMethod.POST)
	public int addCart(CartDto cart, HttpSession session) {
		
		
		int result = 0;
		
		MemberDto member = (MemberDto)session.getAttribute("login");

		if(member != null) {
		
		cartBiz.addCart(cart);
		
		result =1;
		
		
		
		}
		
		return result;
	}
	
	@RequestMapping(value="/cartList.do", method = RequestMethod.GET)
	public String cartList(HttpSession session, Model model, int mNo) {
	
		logger.info("cart List");
		
		
		
		List<CartListDto> cartList = cartBiz.cartList(mNo);
		
		
		model.addAttribute("cartList",cartList);
		
	
		return "mypage/mypage_mycartList";
	}
	
	
	//카트 삭제 
	@ResponseBody 
	@RequestMapping(value="/deleteCart.do", method= RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value= "chbox[]") List<String> chArr, 
			CartDto cart) {
		
		logger.info("delete Cart");

		
		
		MemberDto member = (MemberDto)session.getAttribute("login");
		int mNo = member.getmNo();
		
		
		int result = 0;
		int cartNo = 0;
		
		
		if(member != null) {
			
			cart.setmNo(mNo);
			
			
			for(String i : chArr) {
				cartNo = Integer.parseInt(i);
				cart.setCartNo(cartNo);
				
				cartBiz.deleteCart(cart);
				
			}
			result = 1;
			
			
		}
		
		return result;
	}
	
	
	// 주문
	@RequestMapping(value = "/goodsOrder.do", method = RequestMethod.POST)
	public String order(HttpSession session, GoodsOrderDto order, OrderDetailDto orderDetail, int mNo) throws Exception {
	
		
		logger.info("order");
	 
	 MemberDto member = (MemberDto)session.getAttribute("login");  
	 
	 Calendar cal = Calendar.getInstance();
	 int year = cal.get(Calendar.YEAR);
	 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
	 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
	 String subNum = "";
	 
	 for(int i = 1; i <= 6; i ++) {
	  subNum += (int)(Math.random() * 10);
	 }
	 
	 String orderId = ymd + "_" + subNum;
	 
	 order.setOrderId(orderId);
	 order.setmNo(mNo);
	  
	 cartBiz.orderInfo(order);
	 
	 orderDetail.setOrderId(orderId);   
	 System.out.println(orderId);
	 cartBiz.orderInfo_Details(orderDetail);
	 
	 cartBiz.cartAllDelete(mNo);
	 
	 return "mypage/mypage_mygoodsBuyList";  
	}
	
	
	
	// 주문 목록
	@RequestMapping(value = "/orderList.do", method = RequestMethod.GET)
	public String getOrderList(HttpSession session, GoodsOrderDto order, Model model) throws Exception {
	 logger.info("get order list");
	 
	 MemberDto member = (MemberDto)session.getAttribute("login");
	 int mNo = member.getmNo();
	 
	 order.setmNo(mNo);
	 
	 
	 List<GoodsOrderDto> orderList = cartBiz.orderList(order);
	 
	 model.addAttribute("orderList", orderList);
	 
	 return "mypage/mypage_mygoodsBuyList";
	}
	
	
	@RequestMapping("/goodsPayment.do")
	public String goodsPayment(Model model) {
		
		
		
		return "goods/goods_payment";
	}
	
	@RequestMapping("/goodsPurchase.do")
	public String goodsPurchase(Model model) {
		
		
		
		return "goods/goods_purchase";
	}
	
	//리뷰 상세보기
	@RequestMapping(value = "/reviewDetails.do",method = RequestMethod.GET)
	public String reviewDetail(Model model, int gRewNo) {
		
		model.addAttribute("review",reviewBiz.reviewDetail(gRewNo));
		
		return "goods/goods_review";
	}
	
	//리뷰등록 가져오기
	@RequestMapping(value = "/mygoodsReviewWriteForm.do")
	public String mygoodsReviewWriteForm(int gNo) {
		
		return "mypage/mypage_mygoodsReviewWriteForm";
		
	}
	
	//리뷰 등록하기
	@RequestMapping(value = "/mypageReviewWrite.do")
	public String mypageReviewWrite(ReviewDto dto, HttpSession session, Model model, int gNo) throws IOException, Exception {
		logger.info("mypageReviewWrite INSERT");
		
		//현재 로그인 되어있는 계정의 회원번호를 가져와서 dto에 세팅해주기
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		
		
		
		int res = reviewBiz.mypageReviewWrite(dto);

		if (res > 0) { // 글 insert 성공 시
			model.addAttribute("msg", "글 등록 성공!");
			model.addAttribute("url", "/reviewDetails.do?gRewNo=gRewNo();");
		} else {  //글 insert 실패 시
			model.addAttribute("msg", "글 등록 실패!");
			model.addAttribute("url", "/mygoodsReviewWriteForm.do");
		}
		
		return "/mypage/alertPage";
	}
	
	//리뷰 수정 가져오기
	@RequestMapping(value = "mygoodsRevewUpdateForm.do",method = RequestMethod.GET)
	public String mygoodsRevewUpdateForm(Model model/*, int gNo*/) {		

		//model.addAttribute("dto",biz.adminGoodsDetail(gNo));
		return "mypage/mypage_mygoodsReviewUpdateForm";
	}
	
	//리뷰 수정 
	@RequestMapping(value = "mygoodsUpdateRes.do",method = RequestMethod.GET)
	public String mygoodsUpdate(ReviewDto dto) {

		int res = reviewBiz.mypageReviewUpdate(dto);
		
		if(res > 0) {
			return "redirect:reviewDetails.do?gRewNo="+dto.getgRewNo();
		}else {
			return "redirect:mygoodsRevewUpdateForm.do?gRewNo="+dto.getgRewNo();
		}
	}
	
	//리뷰 삭제
	@RequestMapping("/mygoodsReviewDelete.do")
	public String mygoodsReviewDelete(int gRewNo,HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("login");
		GoodsDto goodsDto = (GoodsDto) session.getAttribute("goods");
		
		int res = reviewBiz.mypageReviewDelete(gRewNo);
		
		if(res>0) {
			return "redirect:goodsList.do?mNo="+memberDto.getmNo();
		}else {
			return "redirect:goodsDetails.do?gNo="+goodsDto.getgNo();
		}
	}
	
	

}
