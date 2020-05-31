package com.shop.GH.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.shop.GH.vo.MemberVO;


/**
 * @author 김건수
 * @회원가입
 */

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSessionTemplate sql;
	
	//조회
	@Override
	public List<MemberVO> selectAll() {
		// TODO Auto-generated method stub
		return sql.selectList("member.selectAll");
	}

	@Override
	public int MemberDelete(String id) {
		// TODO Auto-generated method stub
		return sql.delete("member.deletemember", id);
	}

	//회원가입
	@Override
	public int join(MemberVO member) {
		return sql.insert("member.join", member);
	}
	
	//아이디 확인
	@Override
	public MemberVO isId(String user_ID) {
		return sql.selectOne("member.isId", user_ID);
	}	
	
}
