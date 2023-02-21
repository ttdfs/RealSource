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

	
	/*
	// ys 추가
	@RequestMapping("/index")
	public String mainhome() {
		System.out.println("----------/index---");
		return "index";
	}
	
	*/
	
	// 부트스프렙 붙인거의 메인 페이지 부분 
	@RequestMapping("/index")
	public ModelAndView mainhome(@RequestParam(defaultValue = "") String product_name, String emp_id,ModelAndView mav) {
		System.out.println("----------/index---");
		System.out.println("----------/emp_id---:: "+emp_id);
		
		
		

		mav.setViewName("index");   //view의 어디에 출력할까
		mav.addObject("emp_id", emp_id);
		
		mav.addObject("list", productDao.list(product_name));
		mav.addObject("product_name", product_name);
		mav.addObject("test_name", "testtt333ttttt");
		return mav;
	}
	
	@RequestMapping("/testzone")
	public String testzone() {
		System.out.println("----------/Into testzone<--------");
		return "testzone";
	}
	
	@RequestMapping("/Rnd_Cost")
	public String Rnd_Cost() {
		System.out.println("----------/Into testzone<--------");
		return "Rnd_Cost";
	}
	
	//////////////////
	@RequestMapping("/Sutdy_Plan")
	public String Sutdy_Plan() {
		System.out.println("----------/Into Sutdy_Plan<--------");
		return "Sutdy_Plan";
	}
	
	@RequestMapping("/Sutdy_Meterial")
	public String Sutdy_Meterial() {
		System.out.println("----------/Into Sutdy_Meterial<--------");
		return "Sutdy_Meterial";
	}
	
	@RequestMapping("/Sutdy_cards")
	public String Sutdy_cards() {
		System.out.println("----------/Into Sutdy_cards<--------");
		return "Sutdy_cards";
	}
	
	@RequestMapping("/Sutdy_Full_plan")
	public String Sutdy_Full_plan() {
		System.out.println("----------/Into Sutdy_Full_plan<--------");
		return "Sutdy_Full_plan";
	}
	
	@RequestMapping("/Sutdy_Full_Meterial")
	public String Sutdy_Full_Meterial() {
		System.out.println("----------/Into Sutdy_Full_Meterial<--------");
		return "Sutdy_Full_Meterial";
	}
	
	@RequestMapping("/Open_Sutdy_Full_Meterial")
	public String Open_Sutdy_Full_Meterial() {
		System.out.println("----------/Into Open_Sutdy_Full_Meterial<--------");
		return "Open_Sutdy_Full_Meterial";
	}
	
	@RequestMapping("/Old_Sutdy_Full_Meterial")
	public String Old_Sutdy_Full_Meterial() {
		System.out.println("----------/Into Old_Sutdy_Full_Meterial<--------");
		return "Old_Sutdy_Full_Meterial";
	}
	
	@RequestMapping("/Mng_Study_org")
	public String Mng_Study_org() {
		System.out.println("----------/Into Mng_Study_org<--------");
		return "Mng_Study_org";
	}
	
	@RequestMapping("/Mng_Study_Meterial")
	public String Mng_Study_Meterial() {
		System.out.println("----------/Into Mng_Study_Meterial<--------");
		return "Mng_Study_Meterial";
	}
	
	@RequestMapping("/Request_Study_quest")
	public String Request_Study_quest() {
		System.out.println("----------/Into Request_Study_quest<--------");
		return "Request_Study_quest";
	}
	
	/*
	@RequestMapping("/Request_Food")
	public String Request_Food(String emp_id) {
		System.out.println("----------/Into Request_Food<--------");
		
		System.out.println("----------/Into emp_id<--------::::::"+emp_id);
		
		
		return "Request_Food";
	}
	
	*/
	
	@RequestMapping("/Request_Food")
	public ModelAndView  Request_Food(String emp_id) {
		System.out.println("----------/new model and view into<--------");
		
		System.out.println("----------/new model and view --> Into emp_id<--------::::::"+emp_id);
		
		ModelAndView mav = new ModelAndView();
		
		
	//	return "Request_Food";
		
		
		mav.setViewName("Request_Food");   //view의 어디에 출력할까
		mav.addObject("emp_id", emp_id);
		
		mav.addObject("list", productDao.emp_id_check(emp_id));
    //		mav.addObject("product_name", product_name);
		mav.addObject("test_name", "testtt333ttttt");
		return mav;
		
		
		
	}
	
	////////////////////  신청 버튼을 클릭 했을 때 /////
	@RequestMapping("/Request_Food_confrim")
	public ModelAndView  Request_Food_confrim(String emp_id,String select_box) {
		System.out.println("----------/Request_Food_confrim<--------");
		
		System.out.println("----------/Request_Food_confrim --> Into emp_id<--------::::::"+emp_id);
		
		System.out.println("----------/Request_Food_confrim_no 숫자 --> Into confirm_no<--------::::::"+select_box);
		
		
		ModelAndView mav = new ModelAndView();
		
		
	
		
		mav.setViewName("Request_Food");   //view의 어디에 출력할까
		mav.addObject("emp_id", emp_id);
		
    // 		mav.addObject("product_name", product_name);
		mav.addObject("test_name", "testtt333ttttt");
		return mav;
		
		
		
	}
	
////////////////////취소 버튼을 클릭 했을 때 /////
@RequestMapping("/Request_Food_cancle")
public ModelAndView  Request_Food_cancle(String emp_id,String select_box) {
System.out.println("----------/cancle<--------");

System.out.println("----------/cancle --> Into emp_id<--------::::::"+emp_id);

System.out.println("----------/cancle 숫자 --> Into confirm_no<--------::::::"+select_box);


ModelAndView mav = new ModelAndView();




mav.setViewName("Request_Food");   //view의 어디에 출력할까
mav.addObject("emp_id", emp_id);

// 		mav.addObject("product_name", product_name);
mav.addObject("test_name", "testtt333ttttt");
return mav;



}
	
	@RequestMapping("/buttons")
	public String Buttons() {
		System.out.println("----------/Into Buttons<--------");
		return "buttons";
	}
	
	
	@RequestMapping("/cards")
	public String cards() {
		System.out.println("----------/Into cards<--------");
		return "cards";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("----------/Into Login<--------");
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String register() {
		System.out.println("----------/Into register<--------");
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
        
        
		mav.setViewName("list");   //view의 어디에 출력할까
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
