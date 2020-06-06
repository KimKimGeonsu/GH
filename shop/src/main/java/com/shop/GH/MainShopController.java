package com.shop.GH;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
								 @RequestParam(value="cgNo", defaultValue="0", required=false)int cgNo,
								 @RequestParam(value="scgNo", defaultValue="0", required=false)int scgNo,
								 //required=false : 파라미터 값이 존재하지않으면 null
								 ProductVO product
								) {		
		//카테고리 리스트
		List<ProductVO> productlist 
					= mainShopService.getProductListTest(cgNo, scgNo);
		
		//카테고리 이름가져오는 용
		String cgName = mainShopService.cgName(cgNo, scgNo);
		
		mv.setViewName("category/shop");
		mv.addObject("p", productlist);
		mv.addObject("cgName", cgName);
		
		System.out.println("cgNo : " + cgNo 
							+ ", scgNo : " + scgNo + ", cgName : " + cgName);		
		//System.out.println(productlist.get(0).getPD_NAME());
		
		return mv;
	}
	
	//헤더 카테고리
	@ResponseBody
	@RequestMapping(value = "/CategoryList", method = RequestMethod.GET)
	public Object categoryList() throws Exception{
		
		List<CategoryVO> cglist = mainShopService.getCgList();
		List<SubCategoryVO> scglist = mainShopService.getScgList();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("cglist", cglist);
		map.put("scglist", scglist);
		
		return map;
	}
}
