package com.shop.GH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.MainShopDAO;
import com.shop.GH.vo.ProductVO;

@Service
public class MainShopServiceImpl implements MainShopService{
	
	@Autowired
	private MainShopDAO dao;
	
	@Override
	public List<ProductVO> getProductListTest(int test) {
		return dao.getProductList(test);
	}
}
