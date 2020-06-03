package com.shop.GH;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MainShopService;
import com.shop.GH.vo.ProductVO;

@Controller
public class MainShopController {

	@Autowired
	private MainShopService mainShopService;
	
	//메뉴선택
	@RequestMapping(value = "/cgAction", method = RequestMethod.GET)
	public ModelAndView cgAction(ModelAndView mv,
								 String category,
								 ProductVO product
								) {		
		int test = 101;
		List<ProductVO> productlist 
					= mainShopService.getProductListTest(test);		
		
		System.out.println("category : " + category);
		
		mv.setViewName("category/shop");
		mv.addObject("category", category);
		mv.addObject("p", productlist);
		System.out.println(productlist.get(0).getPD_NAME());
		
		return mv;
	}
}
