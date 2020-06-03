package com.shop.GH.dao.admin;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.shop.GH.vo.admin.ShopVO;


@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Inject
	private SqlSessionTemplate sql;

		
	//상품목록
	@Override
	public List<ShopVO> listShop(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList("shopAdmin.shopList",map);
	}

	//상품등록
	@Override
	public int insertShop(ShopVO vo) {
		// TODO Auto-generated method stub
		return sql.insert("shopAdmin.shopInsert",vo);
	}
	
	//카테고리
	@Override
	public List<ShopVO> cate(int cate) {
		// TODO Auto-generated method stub
		return sql.selectList("shopAdmin.cate",cate);
	}
	



}
