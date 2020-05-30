package com.shop.GH;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.shop.GH.service.admin.ShopService;
import com.shop.GH.vo.admin.ShopVO;

import sun.print.resources.serviceui;

/**
 * @author 김건수
 * @관리자 상품컨트롤러
 *
 */  

@Controller
public class AdminShop {

	@Autowired
	private ShopService shop;

	// 상품등록 메인
//	@RequestMapping(value = "shopMain.admin", method = RequestMethod.GET)
//	public String shopMain() {
//		return "admin/shop/shopList";
//	}

	// 상품목록
	@RequestMapping(value = "shopList.admin", method = RequestMethod.GET)
	public ModelAndView shopList(ModelAndView mv) {
		return new ModelAndView("admin/shop/shopList");
	}
	
	//소분류만 클릭시 오류 + 키워드처리 + 유효성 + 페이징처리,상품리스트   
	@RequestMapping(value = "ajaxlist.admin", method = RequestMethod.POST)
	public ModelAndView ajaxList(ModelAndView mv,ShopVO vo,@RequestParam(value="tall[]", required = false) List<Integer> tall,@RequestParam(value="small[]", required = false) List<Integer> small) {
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("tall", tall);
		map.put("small", small);		
		List<ShopVO> list = new ArrayList<ShopVO>();		
		if(tall==null && small==null) {
			list= shop.listShop();
			}else {				
			list = shop.cateshop(map);
			}		
		return new ModelAndView("admin/shop/list", "list", list);
	}
		

	// 상품등록 ------유효성 이미지만했음 나머지들도 해야됨
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.GET)
	public String shopAdd() {
		return "admin/shop/shopAdd";
	}

	// 상품등록 하기
	@RequestMapping(value = "shopAdd.admin", method = RequestMethod.POST)
	public void shopAdd2(ShopVO vo, HttpServletResponse response, MultipartHttpServletRequest mtf,
			HttpServletRequest request) throws IllegalStateException, IOException {	
		
		String filePath = request.getSession().getServletContext().getRealPath("resources/shopImage/");
		UUID uid = UUID.randomUUID();
		MultipartFile file = mtf.getFile("MAIN_IMG");
		Calendar cal = Calendar.getInstance();
		String ymdPath = "" + cal.get(Calendar.YEAR) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.DATE)) + "\\";
		vo.setPD_IMG(ymdPath + uid + "_" + file.getOriginalFilename());
		if (new File(filePath + ymdPath).mkdirs()) {
		}
		file.transferTo(new File(filePath + vo.getPD_IMG()));
		int result = shop.insertShop(vo);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		if (result == 1) {
			out.println("alert('완료되었습니다');");
			out.println("location.href='';");
			out.println("</script>");
		} else {
			out.println("alert('가입 실패');");
			out.println("history.back();");
		}
		out.println("</script>");
		out.close();

	}
	
	//등록카테고리
	@ResponseBody
	@RequestMapping(value = "cate.admin", method = RequestMethod.POST)
	public List<ShopVO> cate(@RequestParam("cate") int cate) {				
		return shop.cate(cate);
	}

	/**
	 * @param multiFile
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "ckeditor.admin", method = RequestMethod.POST)
	public void imageUpload(HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multiFile, @RequestParam MultipartFile upload) throws Exception {
		Calendar cal = Calendar.getInstance();
		String ymdPath = "" + cal.get(Calendar.YEAR) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.DATE)) + "\\";
		UUID uid = UUID.randomUUID();
		OutputStream out = null;
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		try {
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();

			String uploadPath = request.getSession().getServletContext().getRealPath("resources/ckeditImg/");
			if (new File(uploadPath + ymdPath).mkdirs()) {
			}

			out = new FileOutputStream(new File(uploadPath + ymdPath + uid + "_" + fileName));
			out.write(bytes);
			out.flush();

			printWriter = response.getWriter();
			String fileUrl = "ckupload.admin?uid=" + uid + "&fileName=" + fileName;

			printWriter.println("{\"filename\" : \"" + fileName + "\", \"uploaded\" : 1, \"url\":\"" + fileUrl + "\"}");
			printWriter.flush();

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (printWriter != null) {
					printWriter.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return;
	}

	@RequestMapping(value = "ckupload.admin", method = RequestMethod.GET)
	public void ckSubmit(@RequestParam(value = "uid") String uid, @RequestParam(value = "fileName") String fileName,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Calendar cal = Calendar.getInstance();
		String ymdPath = "" + cal.get(Calendar.YEAR) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1) + "\\"
				+ new DecimalFormat("00").format(cal.get(Calendar.DATE)) + "\\";
		String uploadPath = request.getSession().getServletContext()
				.getRealPath("resources/ckeditImg/" + ymdPath + uid + "_" + fileName);
		File imgFile = new File(uploadPath);
		if (imgFile.isFile()) {
			byte[] buf = new byte[1024];
			int readByte = 0;
			int length = 0;
			byte[] imgBuf = null;

			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;

			try {
				fileInputStream = new FileInputStream(imgFile);
				outputStream = new ByteArrayOutputStream();
				out = response.getOutputStream();

				while ((readByte = fileInputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, readByte);
				}

				imgBuf = outputStream.toByteArray();
				length = imgBuf.length;
				out.write(imgBuf, 0, length);
				out.flush();

			} catch (IOException e) {
				System.out.println(e);
			} finally {
				outputStream.close();
				fileInputStream.close();
				out.close();
			}
		}
	}

	// 테스트용
	@RequestMapping(value = "shop.dddddddddaaan", method = RequestMethod.GET)
	public String Tesddddzt() {
		return "admin/shop/shopAdd";
	}

}
