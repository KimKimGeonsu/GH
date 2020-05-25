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
 * @관리자 상품컨트롤러
 *
 */
@Controller
public class AdminShop {
		
	
	@Autowired
	private ShopService shop;

	//상품등록 메인
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.GET)
	public String shopAdd() {											
		return "admin/shop/shopAdd";
	}
		
	//상품등록 하기
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.POST)
	public void shopAdd2(ShopVO vo,HttpServletResponse response,MultipartHttpServletRequest mtf) throws IOException {	
				
		String filePath = "D:\\imageTest\\";		
		MultipartFile file =  mtf.getFile("MAIN_IMG");
		
		
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
			
			
			
			
			return "admin/shop/shopList";
		}
		
		
		
		//테스트용
		@RequestMapping(value = "shop.dddddddddaaan", method = RequestMethod.GET)
		public String Tesddddzt() {											
			return "admin/shop/shopAdd";
		}
	
	
}
