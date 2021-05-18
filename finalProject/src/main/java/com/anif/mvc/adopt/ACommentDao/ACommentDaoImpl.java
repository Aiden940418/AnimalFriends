package com.anif.mvc.adopt.ACommentDao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.adopt.ACommentDto.ACommentDto;

@Repository
public class ACommentDaoImpl implements ACommentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ACommentDto> aCommentList(int aNo) {
		


		List<ACommentDto> list = new ArrayList<ACommentDto>();
		
		
		try {
		list = sqlSession.selectList(NAMESPACE+"aCommentList",aNo);
		
		System.out.println(list.toString()+"댓글");
		
		
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int aCommentInsert(ACommentDto comDto) {

		int res = 0;
		System.out.println(comDto.toString());
		try {
			res = sqlSession.insert(NAMESPACE+"aCommentInsert",comDto);
			
			
		} catch (Exception e) {
			System.out.println("[error: insert comments" );

			e.printStackTrace();
		}
		
		
		
		return res;
	}
	
	
	public int aCommentDelete(ACommentDto comDto) {
		
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"aCommentDelte",comDto);
		} catch (Exception e) {
			System.out.println("[error: delete comments");
			e.printStackTrace();
		}
		
		
		return res;
		
		
	}

//	//view Cont 메소드 
//
//	@Override
//	//public void replyCnt(int aNo) {
//		sqlSession.update(NAMESPACE+"replyCnt",aNo);
//		
//	}
	

}
