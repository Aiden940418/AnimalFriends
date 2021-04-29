package com.anif.mvc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anif.mvc.dao.MemberDao;
import com.anif.mvc.dto.MemberDto;


@Service
public class MemberBizImpl implements MemberBiz {

	
	@Autowired
	private MemberDao dao;
	
	@Override
	public int signUp(MemberDto dto) {
		return dao.signUp(dto);

	}

	@Override
	public MemberDto login(MemberDto dto) {
		
		return dao.login(dto);
	}

}
