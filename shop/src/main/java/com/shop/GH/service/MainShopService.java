package com.shop.GH.service;

import java.util.List;

import com.shop.GH.vo.CategoryVO;
import com.shop.GH.vo.ProductVO;
import com.shop.GH.vo.SubCategoryVO;

public interface MainShopService {

	//product list test
	List<ProductVO> getProductListTest(int test);
	
	//카테고리 리스트
	List<CategoryVO> getCgList();

	//서브카테고리 리스트
	List<SubCategoryVO> getScgList();
	
}
