package com.shop.GH.dao.admin;

import java.util.List;
import java.util.Map;

import com.shop.GH.vo.admin.ShopVO;

public interface ShopDAO {
	
	public int insertShop(ShopVO vo);
	
	public List<ShopVO> listShop();
	
	public List<ShopVO> cate(int cate);
	
	public List<ShopVO> cateshop(Map<String, Object> map);
	

}
