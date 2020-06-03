package com.shop.GH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.MainShopDAO;
import com.shop.GH.vo.CategoryVO;
import com.shop.GH.vo.ProductVO;
import com.shop.GH.vo.SubCategoryVO;

@Service
public class MainShopServiceImpl implements MainShopService{
	
	@Autowired
	private MainShopDAO dao;
	
	@Override
	public List<ProductVO> getProductListTest(int test) {
		return dao.getProductList(test);
	}

	@Override
	public List<CategoryVO> getCgList() {
		return dao.getCgList();
	}

	@Override
	public List<SubCategoryVO> getScgList() {
		return dao.getScgList();
	}
}
