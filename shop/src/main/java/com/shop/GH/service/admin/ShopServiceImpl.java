package com.shop.GH.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.admin.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDAO dao;

}
