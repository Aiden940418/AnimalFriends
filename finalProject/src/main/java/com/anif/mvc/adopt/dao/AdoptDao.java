package com.anif.mvc.adopt.dao;

import java.util.List;
import java.util.Map;

import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.goods.dto.GoodsDto;

public interface AdoptDao {
	
	
	String NAMESPACE = "adopt.";
	

	
	

	
	//전체 입양공고 리스트 
	public List<AdoptDto> adoptList();
	
	//전체 입양공고 상세 
	public AdoptDto adoptDetail(int aNo);
	
	//내가 올린 공고 리스트 
	public List<AdoptDto> myAdoptList(int mNo);
	
	//내가 올린 공고 상세
	public AdoptDto myAdoptDetail(int aNo);
	
	//나의 입양공고 올리기 
	public int myadoptWrite(AdoptDto dto);
	
	//내가 올린 공고 수정 
	public int myAdoptUpdate(AdoptDto dto);
	
	//내가 올린 공고 삭제 
	public int myAdoptDelete(int aNo);
	
	//관리자 페이지에서 공고 다중 삭제
	public int multiDeleteAdopt(AdoptDto dto);
	
	
	//조회수
	public void viewCount(int aNo);
	
	//입양공고 지역 리스트
	public List<AdoptDto> totalAreaList();
	
	public List<AdoptDto> seoulEastList();
	
	public List<AdoptDto> seoulWestList();
		
	public List<AdoptDto> seoulSouthList(); 

	public List<AdoptDto> seoulNorthList(); 
	
	public List<AdoptDto> GyeonggiList();
	
	
	}

	
	
	
	



