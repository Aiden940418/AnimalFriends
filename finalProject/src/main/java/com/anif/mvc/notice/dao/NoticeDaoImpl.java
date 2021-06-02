package com.anif.mvc.notice.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.notice.dto.NoticeDto;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace = "notice.";
	

	@Override
	public void noticeInsert(NoticeDto noticeDto) {
		
		try {
			sqlSession.insert(namespace+"noticeInsert", noticeDto);
		} catch (Exception e) {
			System.out.println("[error] : noticeInsert");
			e.printStackTrace();
		}
	}
	
	
	

}
