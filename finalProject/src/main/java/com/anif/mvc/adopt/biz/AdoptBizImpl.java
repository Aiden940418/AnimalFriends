package com.anif.mvc.adopt.biz;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.adopt.dao.AdoptDao;
import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.common.pagination.Criteria;

@Service
public class AdoptBizImpl implements AdoptBiz {

	
	@Autowired
	private AdoptDao dao;

	

	//전체 입양공고 리스트 
	@Override
	public List<AdoptDto> adoptList(Criteria cri) {
		

		return dao.adoptList(cri);
	}

	//전체 입양공고 상세 
	@Override
	public AdoptDto adoptDetail(int aNo) {
		return dao.adoptDetail(aNo);
	}

	//나의 입양공고 작성 
	@Override
	public int myadoptWrite(AdoptDto dto) {

			
		return dao.myadoptWrite(dto);
	}

	//나의 입양공고 정보 수정 
	@Override
	public int myAdoptUpdate(AdoptDto dto) {
		return dao.myAdoptUpdate(dto);
	}

	
	//나의 입양공고 리스트 
	@Override
	public List<AdoptDto> myAdoptList(int mNo) {
		return dao.myAdoptList(mNo);
	}

	//나의 입양공고 상세 
	@Override
	public AdoptDto myAdoptDetail(int aNo) {
		
		return dao.adoptDetail(aNo);
	}

	
	//나의 입양공고 삭제
	@Override
	public int myAdoptDelete(int aNo) {
		return dao.myAdoptDelete(aNo);
	}

	@Override
	public void viewCount(int aNo) {

		dao.viewCount(aNo);
	}
	
	//관리자 페이지에서 입양공고 다중 삭제
	@Override
	public int multiDeleteAdopt(AdoptDto dto) {
		return dao.multiDeleteAdopt(dto);
	}

	
	//페이징 처리 
	@Override
	public int adoptListCnt() {
		return dao.adoptListCnt();
	}

	
	

}
