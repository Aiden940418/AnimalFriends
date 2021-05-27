package com.anif.mvc.adopt.biz;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.common.pagination.Criteria;

public interface AdoptBiz {

	//전체 입양공고 리스트 
	public List<AdoptDto> adoptList(Criteria cri);
	
	//전체 입양공고 상세 
	public AdoptDto adoptDetail(int aNo);
	
	//나의 입양공고 올리기 
	public int myadoptWrite(AdoptDto dto);

	
	//내가 올린 공고 수정 
	public int myAdoptUpdate(AdoptDto dto);
	
	
	//내가 올린 공고 리스트 
	public List<AdoptDto> myAdoptList(int mNo);
	
	//내가 올린 공고 상세
	public AdoptDto myAdoptDetail(int aNo);
	
	//내가 올린 공고 삭제 
	public int myAdoptDelete(int aNo);
	
	//관리자 페이지에서 공고 다중 삭제
	public int multiDeleteAdopt(AdoptDto dto);
	
	
	//카운트 
	public void viewCount(int aNo);
	
	
	//페이징 처리
	
	public int adoptListCnt();
	
	
	


	}


