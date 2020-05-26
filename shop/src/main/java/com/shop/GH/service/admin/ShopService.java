package com.shop.GH.service.admin;

import java.util.List;

import com.shop.GH.vo.admin.ShopVO;

public interface ShopService {
	
	public int insertShop(ShopVO vo);
	
	public List<ShopVO> listShop();

}
