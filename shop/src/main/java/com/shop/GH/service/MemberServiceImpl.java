package com.shop.GH.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	
	@Autowired
	private BCryptPasswordEncoder bc;

	@Override
	public int join(MemberVO member) {
		return dao.join(member);
	}

	@Override
	public int isId(String user_ID, String user_PASS) {
		MemberVO rmember = dao.isId(user_ID);	
		System.out.println(rmember.getUSER_ID());
		System.out.println(rmember.getUSER_PASS());
		
		boolean userCheck = bc.matches(
					user_PASS,
					rmember.getUSER_PASS()
				);
		
		int result = -1; //아이디가 존재하지 않는 경우
		if(rmember != null && userCheck) { //아이디가 존재하고 비밀번호가 맞는경우
			result = 1;
		}
		return result;
	}

}