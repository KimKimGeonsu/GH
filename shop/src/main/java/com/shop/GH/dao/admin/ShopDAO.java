package com.shop.GH.dao.admin;

import java.util.List;
import java.util.Map;

import com.shop.GH.vo.admin.ShopVO;
import com.shop.GH.vo.admin.Shop_COL_SIZE;

public interface ShopDAO {
	
	public int insertShop(ShopVO vo);
	
	public int insertShop2(List<Shop_COL_SIZE> list);
	
	public List<ShopVO> listShop(Map<String, Object> map);
	
	public List<ShopVO> cate(int cate);
	

	
	
	

}
