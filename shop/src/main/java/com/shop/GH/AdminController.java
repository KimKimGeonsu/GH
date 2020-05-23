package com.shop.GH;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MemberService;
import com.shop.GH.vo.MemberVO;
import com.shop.GH.vo.ShopAddVO;


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
		return new ModelAndView("admin/member/list","list",list);
	}	
	//회원삭제
	@ResponseBody
	@RequestMapping(value = "delete.admin", method = RequestMethod.GET)
	public int deleteMember(@RequestParam("id")String id) {
		int result = m_service.MemberDelete(id);
		return result;
		}

	
	
	
	
	
	
	/**
	 * @author 김건수
	 * @여기부터 상품쪽
	 */
	
	//상품등록 메인
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.GET)
	public String shopAdd() {											
		return "admin/shop/shopAdd";
	}
		
	//상품등록 하기
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.POST)
	public void shopAdd2(ShopAddVO vo,HttpServletResponse response,MultipartHttpServletRequest mtf) throws IOException {	
		System.out.println("mtf :"+mtf);
		String fileTag = "file";
		String filePath = "D:\\imageTest\\";
		
		MultipartFile file =  mtf.getFile("MAIN_IMG");
		System.out.println("file : "+file);
		
		String fileName= file.getOriginalFilename();
		
		file.transferTo(new File(filePath+fileName));
		
		System.out.println(vo);
		response.setContentType("text/html;charset=utf-8");	
		PrintWriter out = response.getWriter();
		out.println("<script>");
//		if (result == 1) {						
			out.println("alert('완료되었습니다');");
			out.println("location.href='selectAll.admin';");
			out.println("</script>");
//
//		}else {
//			out.println("alert('가입 실패');");
//			out.println("history.back();");
//
//		}
//		out.println("</script>");
		out.close();
	}
	

		//상품목록
		@RequestMapping(value = "shopList.admin", method = RequestMethod.GET)
		public String shopList() {											
			return "admin/member/list";
		}
		
		
		
		//테스트용
		@RequestMapping(value = "shop.dddddddaaan", method = RequestMethod.GET)
		public String Tesddddt() {											
			return "admin/shop/shopAdd";
		}
	
	
}
