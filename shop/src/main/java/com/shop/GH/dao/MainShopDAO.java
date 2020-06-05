package com.shop.GH.dao;

import java.util.HashMap;
import java.util.List;

import com.shop.GH.vo.CategoryVO;
import com.shop.GH.vo.ProductVO;
import com.shop.GH.vo.SubCategoryVO;

public interface MainShopDAO {

	//product list test
	List<ProductVO> getProductList(HashMap<String, Integer> map);

	//카테고리 리스트
	List<CategoryVO> getCgList();

	//서브카테고리 리스트
	List<SubCategoryVO> getScgList();

	String cgName(HashMap<String, Integer> map);

}
