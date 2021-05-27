package com.anif.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anif.mvc.adopt.biz.AdoptBiz;

@Controller
public class AdoptAreaController {
	@Autowired
	private AdoptBiz biz;
	
	private Logger logger = LoggerFactory.getLogger(AdoptAreaController.class);
	
	//전체지역 보기
	@RequestMapping(value="/totalAreaList.do")
	public String totalAreaList(Model model) {
		model.addAttribute("list",biz.totalAreaList());
		return "adopt/adopt";		
	}
	
	//서울동부 보기
	@RequestMapping(value="/seoulEastList.do")
	public String seoulEastList(Model model) {
		model.addAttribute("list",biz.seoulEastList());
		return "adopt/adopt";
	}	
	
	//서울서부 보기
	@RequestMapping(value="/seoulWestList.do")
	public String seoulWestList(Model model) {
		model.addAttribute("list",biz.seoulWestList());
		return "adopt/adopt";
	}
	
	//서울남부 보기
	@RequestMapping(value="/seoulSouthList.do")
	public String seoulSouthList(Model model) {
		model.addAttribute("list",biz.seoulSouthList());
		return "adopt/adopt";
	}
	
	//서울북부 보기
	@RequestMapping(value="/seoulNorthList.do")
	public String seoulNorthList(Model model) {
		model.addAttribute("list",biz.seoulNorthList());
		return "adopt/adopt";
	}
	
	//경기인천 보기
	@RequestMapping(value="/GyeonggiList.do")
	public String GyeonggiList(Model model) {
		model.addAttribute("list",biz.GyeonggiList());
		return "adopt/adopt";
	}
	

}
