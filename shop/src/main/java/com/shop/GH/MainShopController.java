package com.shop.GH;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.MainShopService;
import com.shop.GH.vo.CategoryVO;
import com.shop.GH.vo.ProductVO;
import com.shop.GH.vo.SubCategoryVO;

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
	
	//헤더 카테고리
	@ResponseBody
	@RequestMapping(value = "/CategoryList", method = RequestMethod.GET)
	public Object categoryList() throws Exception{
		System.out.println("CategoryList");
		List<CategoryVO> cglist = mainShopService.getCgList();
		List<SubCategoryVO> scglist = mainShopService.getScgList();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("cglist", cglist);
		map.put("scglist", scglist);
		
		return map;
	}
}
