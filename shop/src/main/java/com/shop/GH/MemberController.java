package com.shop.GH;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
		
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
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
	@RequestMapping(value = "/loginProcess" , method = RequestMethod.POST)
	public String login(
						MemberVO m,
						HttpSession session,
						HttpServletResponse response
						)throws Exception {
		
		int result = memberservice.isId(m.getUSER_ID(),m.getUSER_PASS());
		
//		boolean userCheck = bc.matches(
//						m.getUSER_PASS(),
//						memberservice.isId(m.getUSER_ID()).getUSER_PASS()
//						);
//		
//		if(userCheck) {
////			session.setAttribute("id", m.getUSER_ID());
////			return "index";
//			System.out.println("로그인");
//			return null;
//		}else {
//			response.setContentType("text/html;charset=utf-8");
//			PrintWriter out = response.getWriter();
//			out.println("<script>alert('아이디 또는 비밀번호를 확인해주세요'); history.go(-1);</script>");
//			out.close();
//			return null;
//		}
		
		if(result == 1) {
			session.setAttribute("id", m.getUSER_ID()); //session에 id저장
			System.out.println("session ID : " + m.getUSER_ID());			
			System.out.println("로그인 성공");
			//return "index";
			return "redirect:/";
		}else {				
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호를 확인해주세요'); history.go(-1);</script>");
			out.close();		
			return null;
		}
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:login";
	}		
	
}
