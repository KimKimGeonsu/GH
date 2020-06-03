package com.shop.GH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MemberService;
import com.shop.GH.vo.MemberVO;


/**
 * @author 김건수
 * @멤버컨트롤러
 *
 */
@Controller
public class MemberController {
	@Inject
	MemberService memberservice;
	
	@Autowired
	private BCryptPasswordEncoder bc;
		
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView home() {							
		return new ModelAndView("member/login");
	}
	
//	@RequestMapping(value = "/register", method = RequestMethod.POST)
//	public void register(MemberVO vo,HttpServletResponse response) throws IOException {
//		System.out.println(vo);
//		response.setContentType("text/html;charset=utf-8");
//		vo.setPassword(bc.encode(vo.getPassword()));
//		System.out.println(vo.getPassword());
//		int result = memberservice.register(vo);
//		PrintWriter out = response.getWriter();
//		out.println("<script>");
//		if (result == 1) {						
//			out.println("alert('가입 성공');");
//			out.println("location.href='/GH';");
//
//		}else {
//			out.println("alert('가입 실패');");
//			out.println("history.back();");
//
//		}
//		out.println("</script>");
//		out.close();
//
//	}
//	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/join" , method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}
	
	//회원가입
	@RequestMapping(value = "/joinAction" , method = RequestMethod.POST)
	public void joinAction(MemberVO member, HttpServletResponse response) throws Exception{
		
		//비밀번호 암호화
		member.setUSER_PASS(bc.encode(member.getUSER_PASS()));
		System.out.println(member.getUSER_PASS());
		
		int result = memberservice.join(member);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();	
		
		out.println("<script>");
		if(result == 1) {
			out.println("alert('"+ member.getUSER_ID() +"님 회원가입에 성공했습니다.');");
			out.println("location.href='login;'");
		}else {
			out.println("alert('회원가입에 실패했습니다.');");
			out.println("history.back();");
		}
		out.println("</script>");
		out.close();
	}
	
	//로그인
	@RequestMapping(value = "login" , method = RequestMethod.POST)
	public String login(
						String USER_ID, String USER_PASS,
						HttpSession session,
						HttpServletResponse response
						)throws Exception {
		
		
		
		//int result = memberservice.isId(USER_ID, USER_PASS);
		
		return null;
	}
}
