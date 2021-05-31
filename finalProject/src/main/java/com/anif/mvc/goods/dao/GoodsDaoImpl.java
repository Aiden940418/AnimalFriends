package com.anif.mvc.goods.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.anif.mvc.adopt.dto.AdoptDto;
import com.anif.mvc.goods.dto.GoodsDto;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
 
	
	//전체 굿즈 리스트
	@Override
	public List<GoodsDto> goodsList() {
		
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsList");
			System.out.println(list.toString());
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}

	//굿즈 상세보기
	@Override
	public GoodsDto goodsDetail(int gNo) {
		GoodsDto res = null;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"goodsDetail",gNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	
	//관리자 페이지에서 굿즈 리스트
	@Override
	public List<GoodsDto> adminGoodsList() {
		
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adminGoodsList");
			System.out.println(list.toString());
		} catch (Exception e) {
			System.out.println("[error]: select list" );
			e.printStackTrace();
		}
		return list;
	}

	//관리자 페이지에서 굿즈 리스트 상세
	@Override
	public GoodsDto adminGoodsDetail(int gNo) {
		
		GoodsDto res = null; 
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"adminGoodsDetail",gNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	//관리자 페이지에서 굿즈 등록
	@Override
	public int adminGoodsWrite(GoodsDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"adminGoodsWrite",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	//관리자 페이지에서 굿즈 수정
	@Override
	public int adminGoodsUpdate(GoodsDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"adminGoodsUpdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	//관리자 페이지에서 굿즈 삭제
	@Override
	public int adminGoodsDelete(int gNo) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminGoodsDelete",gNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
		
		
	}
	//관리자 페이지에서 굿즈 다중 삭제
	@Override
	public int multiDeleteGoods(GoodsDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"multiDeleteGoods",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	//굿즈 카테고리 가방 선택
	@Override
	public List<GoodsDto> goodsBagList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsBagList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}	
	
	//굿즈 카테고리 옷 선택
	@Override
	public List<GoodsDto> goodsClothList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsClothList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}		
	
	//굿즈 카테고리 악세사리 선택
	@Override
	public List<GoodsDto> goodsAccList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsAccList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}

	//관리자 굿즈 카테고리 가방 선택
	@Override
	public List<GoodsDto> adminGoodsBagList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adminGoodsBagList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}
	
	//관리자 굿즈 카테고리 옷 선택
	@Override
	public List<GoodsDto> adminGoodsClothList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adminGoodsClothList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}

	//관리자 굿즈 카테고리 악세사리 선택
	@Override
	public List<GoodsDto> adminGoodsAccList() {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"adminGoodsAccList");
		} catch (Exception e) {
			System.out.println("[error: select list" );
			e.printStackTrace();
		}		
		return list;
	}

	@Override
	public List<GoodsDto> goodsSelect(GoodsDto dto) {
		List<GoodsDto> list = new ArrayList<GoodsDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"goodsSelect",dto);
		} catch (Exception e) {
			System.out.println("[error: goodsSelect list" );
			e.printStackTrace();
		}
		return list;
	}

	

}
