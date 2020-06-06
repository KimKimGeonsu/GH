package com.shop.GH.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.admin.ShopDAO;
import com.shop.GH.vo.admin.ShopVO;
import com.shop.GH.vo.admin.Shop_COL_SIZE;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDAO dao;

	// 상품목록
	@Override
	public List<ShopVO> listShop(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.listShop(map);
	}

	// 상품등록
	@Override
	public int insertShop(ShopVO vo) {
		// TODO Auto-generated method stub
		int result =0;
		
		try {			
		return result=dao.insertShop(vo);
		}catch (Exception e) {
		return result;	
		}
		
	}
	//등록2
	@Override
	public int insertShop2(List<Shop_COL_SIZE> list) {
		// TODO Auto-generated method stub
		return dao.insertShop2(list); 

	}

	// 카테고리
	@Override
	public List<ShopVO> cate(int cate) {
		// TODO Auto-generated method stub
		return dao.cate(cate);
	}






	

}
