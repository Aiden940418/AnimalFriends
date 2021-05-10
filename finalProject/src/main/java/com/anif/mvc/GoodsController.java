package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.anif.mvc.goods.biz.GoodsBiz;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsBiz biz;
	
	private Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	//굿즈 목록 보기
	@RequestMapping(value = "/goodsList.do")
	public String goods(Model model) {
		
		model.addAttribute("list",biz.goodsList());
		return "goods/goods";
	}
	
	
	//굿즈 상세보기
	@RequestMapping(value = "/goodsDetails.do",method = RequestMethod.GET)
	public String goodsDetail(Model model, int gNo) {
		
		model.addAttribute("dto",biz.goodsDetail(gNo));
		
		return "goods/goods_details";
	}
	
	//관리자 페이지에 굿즈 상품등록
/*	@RequestMapping(value = "admin_goodsWrite.do")
	public String admin_goodsWrite() {
		return "admin/admin_goods
	}
	*/
	
	
	
	
	@RequestMapping("/goodsPayment.do")
	public String goodsPayment(Model model) {
		
		
		
		return "goods/goods_payment";
	}
	
	@RequestMapping("/goodsPurchase.do")
	public String goodsPurchase(Model model) {
		
		
		
		return "goods/goods_purchase";
	}
	
	
	
	
	
	
	

}
