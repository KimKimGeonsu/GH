package com.shop.GH.service;

import java.util.List;

import com.shop.GH.vo.MemberVO;

/**
 * @author 김건수
 * @회원가입
 */
public interface MemberService {

	//회원가입
	public int join(MemberVO member);
	
	//아이디 확인
	public int isId(String user_ID, String user_PASS);
	
}
