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

	

	@Override
	public List<AdoptDto> adoptList() {

		return dao.adoptList();
	}


	@Override
	public AdoptDto adoptDetail(int aNo) {
		return dao.adoptDetail(aNo);
	}


	@Override
	public int myadoptWrite(AdoptDto dto) {
		return dao.myadoptWrite(dto);
	}

	@Override
	public int myadoptUpdate(AdoptDto dto) {
		return dao.myadoptUpdate(dto);
	}

	
	

}
