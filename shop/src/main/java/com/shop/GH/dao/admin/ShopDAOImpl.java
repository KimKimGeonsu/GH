package com.shop.GH.dao.admin;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Inject
	private SqlSessionTemplate sql;

}
