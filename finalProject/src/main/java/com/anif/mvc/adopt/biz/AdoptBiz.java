package com.anif.mvc.adopt.biz;

import com.anif.mvc.adopt.dto.AdoptDto;

public interface AdoptBiz {


	public AdoptDto adoptDetail(int aNo);

	public int myadoptWrite(AdoptDto dto);

	public int myadoptUpdate(AdoptDto dto);
	
	


	}


