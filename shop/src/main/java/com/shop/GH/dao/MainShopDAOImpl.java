package com.shop.GH.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.GH.vo.ProductVO;

@Repository
public class MainShopDAOImpl implements MainShopDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProductVO> getProductList(int test) {
		return sqlSession.selectList("mainShop.list", test);
	}
}
