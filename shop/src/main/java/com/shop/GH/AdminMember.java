package com.shop.GH;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MemberService;
import com.shop.GH.service.admin.ShopService;
import com.shop.GH.vo.MemberVO;
import com.shop.GH.vo.admin.ShopVO;


/**
 * @author 김건수
 * @관리자 멤버 컨트롤러
 *
 */
@Controller
public class AdminMember {
	
	@Inject
	private MemberService m_service;
	
	@Autowired
	private ShopService shop;
	
//	@RequestMapping(value = "admin/home", method = RequestMethod.GET)
//	public ModelAndView homess() {							
//		return new ModelAndView("admin/home");
//	}
	
	//회원목록조회
	@RequestMapping(value = "selectAll.admin", method = RequestMethod.GET)
	public ModelAndView selectAll() {							
		List<MemberVO> list = m_service.selectAll();				
		return new ModelAndView("admin/member/list","list",list);
	}	
	//회원삭제
	@ResponseBody
	@RequestMapping(value = "delete.admin", method = RequestMethod.GET)
	public int deleteMember(@RequestParam("id")String id) {
		int result = m_service.MemberDelete(id);
		return result;
		}

	
		//테스트용
		@RequestMapping(value = "shop.dddddddaaan", method = RequestMethod.GET)
		public String Tesddddt() {											
			return "admin/shop/shopAdd";
		}
		
		
		//테스트용2
				@RequestMapping(value = "shop.dsadasdaddddddaaan", method = RequestMethod.GET)
				public String Tesddddasdasdast() {											
					return "admin/shop/shopAdd";
				}
				

				//테스트용3
						@RequestMapping(value = "shop.dsadasdaddddddaaan", method = RequestMethod.GET)
						public String Tesdddasdasdsadasdasdast() {											
							return "admin/shop/shopAdd";
						}
	
	
}
