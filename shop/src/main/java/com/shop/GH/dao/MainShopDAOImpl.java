package com.shop.GH.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.GH.vo.CategoryVO;
import com.shop.GH.vo.ProductVO;
import com.shop.GH.vo.SubCategoryVO;

@Repository
public class MainShopDAOImpl implements MainShopDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProductVO> getProductList(int test) {
		return sqlSession.selectList("mainShop.list", test);
	}

	@Override
	public List<CategoryVO> getCgList() {
		return sqlSession.selectList("mainShop.cgList");
	}

	@Override
	public List<SubCategoryVO> getScgList() {
		return sqlSession.selectList("mainShop.scgList");
	}
}
