package com.anif.mvc.adopt.biz;

import java.util.List;

import com.anif.mvc.adopt.dto.AdoptDto;

public interface AdoptBiz {

	
	public List<AdoptDto> adoptList();

	public AdoptDto adoptDetail(int aNo);

	public int myadoptWrite(AdoptDto dto);

	public int myadoptUpdate(AdoptDto dto);
	
	


	}


