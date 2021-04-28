package com.mapping.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoodsController {
	
	
	
	private Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	
	
	
	@RequestMapping("/goodsDetails.do")
	public String goodsDetail(Model model) {
		
		
		
		return "goods/goods_details";
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
