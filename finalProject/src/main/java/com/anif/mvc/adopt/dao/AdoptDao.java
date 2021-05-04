package com.anif.mvc.adopt.dao;

import com.anif.mvc.adopt.dto.AdoptDto;

public interface AdoptDao {
	
	
	String NAMESPACE = "adopt.";
	

	public AdoptDto adoptDetail(int aNo);

	public int myadoptWrite(AdoptDto dto);

	public int myadoptUpdate(AdoptDto dto);
	
	
	


}
