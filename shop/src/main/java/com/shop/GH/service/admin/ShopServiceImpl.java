package com.shop.GH.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.admin.ShopDAO;
import com.shop.GH.vo.admin.ShopVO;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDAO dao;


	//상품목록
	@Override
	public List<ShopVO> listShop() {
		// TODO Auto-generated method stub
		return dao.listShop();
	}

	//상품등록
	@Override
	public int insertShop(ShopVO vo) {
		// TODO Auto-generated method stub
		return dao.insertShop(vo);
	}

}
