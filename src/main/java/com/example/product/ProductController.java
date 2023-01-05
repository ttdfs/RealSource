package com.example.product;

import java.io.File;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

////------> 01*05 로그 레벨 추가함 ///

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


////<-----   01*05 로그 레벨 추가함 ///



@Controller
public class ProductController {

	@Autowired
	ProductDAO productDao;

	// ys 추가
	@RequestMapping("/index")
	public String mainhome() {
		System.out.println("----------/index---");
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	
	
	////////////
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/list";
	}

	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "") String product_name, ModelAndView mav) {
		
		System.out.println("----------/into - list--");
		
			
		System.out.printf("******** --: product_name********:(%s)\n", product_name);
		System.out.printf("********  --: mav**********:(%s)\n", mav);
		
		//// ----->   01*05 로그 레벨 추가함 ///
	//	final Logger LOGGER = LogManager.getLogger(ProductController.class);
		
	//    LOGGER.debug("Hello Debug level log");
     //   LOGGER.info("Hello Info level log");
    //    LOGGER.error("Hello Error level log");
		
        
         //// <-----   01*05 로그 레벨 추가함 ///
        
        
		mav.setViewName("list");
		mav.addObject("list", productDao.list(product_name));
		mav.addObject("product_name", product_name);
		return mav;
	}

	@RequestMapping("/write")
	public String write() {
		return "write";
	}

	@RequestMapping("/insert")
	public String insert(@RequestParam Map<String, Object> map, @RequestParam MultipartFile img,
			HttpServletRequest request) {
		String filename = "-";
		if (img != null && !img.isEmpty()) {
			filename = img.getOriginalFilename();
			try {
				ServletContext application = request.getSession().getServletContext();
				String path = application.getRealPath("/resources/images/");
				img.transferTo(new File(path + filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		map.put("filename", filename);
		productDao.insert(map);
		return "redirect:/list";
	}

	@RequestMapping("/detail/{product_code}")
	public ModelAndView detail(@PathVariable String product_code, ModelAndView mav) {
		mav.setViewName("detail");
		mav.addObject("product", productDao.detail(product_code));
		return mav;
	}

	@RequestMapping("/update")
	public String update(@RequestParam Map<String, Object> map, @RequestParam MultipartFile img,
			HttpServletRequest request) {
		String filename = "-";
		if (img != null && !img.isEmpty()) {
			filename = img.getOriginalFilename();
			try {
				ServletContext application = request.getSession().getServletContext();
				String path = application.getRealPath("/resources/images/");
				img.transferTo(new File(path + filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			String product_code = map.get("product_code").toString();
			Map<String, Object> product = productDao.detail(product_code);
			filename = product.get("filename").toString();
		}
		map.put("filename", filename);
		productDao.update(map);
		return "redirect:/list";
	}

	@RequestMapping("/delete")
	public String delete(int product_code, HttpServletRequest request) {
		String filename = productDao.filename(product_code);
		if (filename != null && !filename.equals("-")) {
			ServletContext application = request.getSession().getServletContext();
			String path = application.getRealPath("/resources/images/");
			File file = new File(path + filename);
			if (file.exists()) {
				file.delete();
			}
		}
		productDao.delete(product_code);
		return "redirect:/list";
	}

}
