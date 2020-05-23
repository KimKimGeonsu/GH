package com.shop.GH;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MemberService;
import com.shop.GH.vo.MemberVO;


/**
 * @author 김건수
 * @관리자 컨트롤러
 *
 */
@Controller
public class AdminController {
	
	@Inject
	private MemberService m_service;
	
//	@RequestMapping(value = "admin/home", method = RequestMethod.GET)
//	public ModelAndView homess() {							
//		return new ModelAndView("admin/home");
//	}
	
	//회원목록조회
	@RequestMapping(value = "selectAll.admin", method = RequestMethod.GET)
	public ModelAndView selectAll() {							
		List<MemberVO> list = m_service.selectAll();				
		return new ModelAndView("admin/list","list",list);
	}	
	//회원삭제
	@ResponseBody
	@RequestMapping(value = "delete.admin", method = RequestMethod.GET)
	public int deleteMember(@RequestParam("id")String id) {
		int result = m_service.MemberDelete(id);
		return result;
		}
	//상품등록
	@RequestMapping(value = "shop.admin", method = RequestMethod.GET)
	public String shopAdd() {											
		return "admin/shopAdd";
	}
	
	//테스트용
	@RequestMapping(value = "shop.aaan", method = RequestMethod.GET)
	public String Test() {											
		return "admin/shopAdd";
	}
	
	//asdsad
	//sssssss
	//이게마지막
	
	
}
