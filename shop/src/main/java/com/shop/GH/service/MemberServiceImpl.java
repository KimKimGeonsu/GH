package com.shop.GH.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.GH.dao.MemberDAO;
import com.shop.GH.vo.MemberVO;


/**
 * @author 김건수
 * @회원가입
 */
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO dao;

	@Override
	public int join(MemberVO member) {
		return dao.join(member);
	}

}
