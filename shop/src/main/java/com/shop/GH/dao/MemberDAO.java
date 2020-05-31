package com.shop.GH.dao;

import java.util.List;

import com.shop.GH.vo.MemberVO;


/**
 * @author 김건수
 * @회원가입
 */
public interface MemberDAO {
	
	//멤버조회 어드민
	public List<MemberVO> selectAll();
	
	//멤버삭제 어드민
	public int MemberDelete(String id);
	
	//회원가입
	public int join(MemberVO member);
	
	//아이디 확인
	public MemberVO isId(String user_ID);
}
