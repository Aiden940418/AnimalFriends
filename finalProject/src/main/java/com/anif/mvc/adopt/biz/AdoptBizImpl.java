package com.anif.mvc.adopt.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.adopt.dao.AdoptDao;
import com.anif.mvc.adopt.dto.AdoptDto;

@Service
public class AdoptBizImpl implements AdoptBiz {

	@Autowired
	private AdoptDao dao;

	

	//전체 입양공고 리스트 
	@Override
	public List<AdoptDto> adoptList() {

		return dao.adoptList();
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

	
	

}
