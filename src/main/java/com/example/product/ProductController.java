package com.example.product;

import java.io.File;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
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

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;



@Controller
public class ProductController {

	private static final Logger logger = LogManager.getLogger(ProductController.class);


	
	
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
	
	
	@RequestMapping("/Request_Food")  // 음식 신청 처음 들어가서
	public ModelAndView  Request_Food(String emp_id) {
		System.out.println("-------Request_Food--처음 들어올때 클래쓰--------");
		
								//	System.out.println("----Request_Food------/new model and view --> Into emp_id<--------::::::"+emp_id);
		
										//	logger.debug("Creating ModelAndView object...");
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("Request_Food");   //view의 어디에 출력할까
		mav.addObject("emp_id", emp_id);
		
							//	mav.addObject("Food_Today_remain_qty", productDao.Food_Today_remain_qty(emp_id));
		
							//	mav.addObject("Food_Today_quest_qty", productDao.Food_Today_quest_qty(emp_id));
		
		
							//////////////////////////////////////////////////
						//			List<Map<String, Object>> foodList = productDao.Food_Today_quest_qty(emp_id);

				
		int foodCount = 0;
		int choiced_food = 0;
		
		Object Today_total_food_count; //오늘자 전채의 갯수
		
		
		Object	Today_total_selected_001_count =0; //선택된 즉석 코너의 갯수
		Object Today_total_selected_002_count = 0; //선택된 간편식 코너의 갯수
	
		
		
		Object My_Today_001_food_count;
		Object My_Today_002_food_count; 
		  
				  
		//무조건 오늘 선택된 것들의 갯수를 구해야 한다.
		
		
		List<Map<String, Object>> Food_Today_remained_abile_qty = productDao.Food_Today_remained_qty(emp_id); //전체의 갯수구하기
		List<Map<String, Object>> Food_Today_001_remained_qty = productDao.Food_Today_001_remained_qty(emp_id);  //오늘 전체 001 신청수량 구하기
		List<Map<String, Object>> Food_Today_002_remained_qty = productDao.Food_Today_002_remained_qty(emp_id);  //오늘 전체 002 신청수량 구하기
	
		
		List<Map<String, Object>> My_Today_001 = productDao.My_Today_001(emp_id);  //나의 001 신청수량 구하기
		List<Map<String, Object>> My_Today_002 = productDao.My_Today_002(emp_id);  //나의 002 신청수량 구하기
		
		
		if (Food_Today_remained_abile_qty != null && !Food_Today_remained_abile_qty.isEmpty()) {  // 신청 갯수가 있을 경우
							System.out.println("----foodMap_Food_Today_remained_abile 이 널이 아니라서 / 신청 갯수가 있다....");
			  
							System.out.println("----foodMap_Food_Today_  전체 갯 수의 사이즈야 " + Food_Today_remained_abile_qty.size());
			  				//	  System.out.println("----foodMap_Food_Today_remaisizesizesizesizened" + Food_Today_001_remained_qty.get(1));
			            //001 왼쪽의 가능 갯수 구하는 것
		
		     	 Map<String, Object> map_Food_Today_remained_abile_qty = Food_Today_remained_abile_qty.get(0);
		        	Today_total_food_count= map_Food_Today_remained_abile_qty.get("menu_cd");  // 오늘자 전체의 갯수
		     	 
			    			  
			     if(Food_Today_001_remained_qty != null && !Food_Today_001_remained_qty.isEmpty()) {
			        Map<String, Object> map_Food_Today_001_remained_qty = Food_Today_001_remained_qty.get(0);
			        Today_total_selected_001_count = map_Food_Today_001_remained_qty.get("menu_cd");
			     }else {
			    	Today_total_selected_001_count =  0;
			     }
			    
			     if(Food_Today_002_remained_qty != null && !Food_Today_002_remained_qty.isEmpty()) {
			     Map<String, Object> map_Food_Today_002_remained_qty = Food_Today_002_remained_qty.get(0);
			     Today_total_selected_002_count = map_Food_Today_002_remained_qty.get("menu_cd");
			     }else {
			    	 Today_total_selected_002_count = 0;
			     }
			   	 
			   	
			     
			     if(My_Today_001 != null && !My_Today_001.isEmpty()) {
				     Map<String, Object> map_My_Today_001 = My_Today_001.get(0);
				     My_Today_001_food_count = map_My_Today_001.get("count");
				     }else {
				    	 My_Today_001_food_count = 0;
				    	 
				     }
				    	 
				    	 
			     if(My_Today_002 != null && !My_Today_002.isEmpty()) {
				     Map<String, Object> map_My_Today_002 = My_Today_002.get(0);
				     My_Today_002_food_count = map_My_Today_002.get("count");
				     
				     System.out.println("----신청갯수가cccccccccccccccc ");
				  
				  
				     }else {
				    	 My_Today_002_food_count = 0;
				    	 
				     }
			     
			     
			    	System.out.println("----신청갯수가 있을 경우 전체의 갯수구하기 / "+Today_total_food_count);
			    	System.out.println("----신청갯수가 있을 경우 오늘 전체 001 신청수량 구하기 / "+Today_total_selected_001_count);
			    	System.out.println("----신청갯수가 있을 경우 오늘 전체 002 신청수량 구하기/ "+Today_total_selected_002_count);
			    	System.out.println("----신청갯수가 있을 경우 나의 001 신청수량 구하기/ "+My_Today_001_food_count);
			    	System.out.println("----신청갯수가 있을 경우 나의 002 신청수량 구하기/ "+My_Today_002_food_count);
		     
			    	mav.addObject("Today_total_food_count", Today_total_food_count);
			    	mav.addObject("Today_total_001_food_count", Today_total_selected_001_count);
	     		   	mav.addObject("Today_total_002_food_count", Today_total_selected_002_count);
				    mav.addObject("Food_001coutnt", My_Today_001_food_count);
				  	mav.addObject("Food_002coutnt", My_Today_002_food_count);
//				  	 
//			    	mav.addObject("Today_total_food_count", 1);
//				   	mav.addObject("Today_total_001_food_count", 2);
//				   	mav.addObject("Today_total_002_food_count", 3);
//				    mav.addObject("Food_001coutnt", 4);
//				  	mav.addObject("Food_002coutnt", 5);
		
		} else {   //신청 갯수가 없을 경우
			
			 System.out.println("----신청 갯수가 없을 경우 모든 변수에 0의 값 세팅");
			
				mav.addObject("Today_total_food_count", 0);
			   	mav.addObject("Today_total_001_food_count", 0);
			   	mav.addObject("Today_total_002_food_count", 0);
			    mav.addObject("Food_001coutnt", 0);
			  	mav.addObject("Food_002coutnt", 0);
		}
		
		       mav.addObject("cancel_checking", "first");
		       mav.addObject("confirm_checking", "first");
		
		return mav;

		
		
	/*	
		

		if (foodList != null && !foodList.isEmpty()) {
		    // foodList가 null이 아니고 비어있지 않은 경우
			System.out.println("----foodCoun---->t"+" foodList가 null이 아니고 비어있지 않은 경우");
			
		    Map<String, Object> foodMap = foodList.get(0);
		    Object countObj = foodMap.get("foodcount");
		    
		    if (countObj != null) {
		        foodCount = ((Number) countObj).intValue();
		        System.out.println("----foodCoun 들어있는 것의 갯수---->"+foodCount);
		        
		    }
		}

		if (foodCount == 0) {
		    mav.addObject("Food_Today_yesorno", "N");
		    System.out.println("----Food_Today_yesorno---->"+"N");
		} else {
		    mav.addObject("Food_Today_yesorno", "Y");
		    System.out.println("----Food_Today_yesorno---->"+"Y");
		}
		
		
		*/	
		
		
		
		
		
		
	//	return "Request_Food";
		
		
	
	
//		List<Integer> myList = new ArrayList<>();
		
	//	List<Integer> list  = new List<Integer>();
		
		
		
	//	List<Integer> list = productDao.Food_Today_quest_qty(emp_id);

	//	int[] array = list.stream().mapToInt(Integer::intValue).toArray();
		
		
	//	if (productDao.Food_Today_quest_qty(emp_id) == null || productDao.Food_Today_quest_qty(emp_id) == 0) {
		    //오늘 신청한 것이 없다.
	//		mav.addObject("Food_Today_yesorno","N");
	//		}
		
	//	mav.addObject("product", productDao.detail(product_code));
	//	mav.addObject("list", productDao.emp_id_check(emp_id));
  	//	mav.addObject("product_name", product_name);
	//	mav.addObject("list2", productDao.emp_id_check(emp_id));   //테스트2
	//	mav.addObject("list3", productDao.emp_id_check(emp_id));   //테스트3
		
	//	mav.addObject("test_name", "testtt333ttttt");
	
		
	}
	
	////////////////////  신청 버튼을 클릭 했을 때 /////
	@RequestMapping("/Request_Food_confrim")
	public ModelAndView  Request_Food_confrim(String emp_id,String select_box) {
							System.out.println("----------/Request_Food_confrim<--------");
		
							System.out.println("----------/Request_Food_confrim --> Into emp_id<--------::::::"+emp_id);
		
							System.out.println("----------/Request_Food_confrim_no 숫자 --> Into confirm_no<--------::::::"+select_box);
		
		String update_result = new String();
		ModelAndView mav = new ModelAndView();
		
	//	productDao.Food_Today_remain_qty(emp_id)
	
		Map<String, Object> myMap = new HashMap<>();
		
		
		myMap.put("emp_id", emp_id);
		myMap.put("select_box", select_box);
		
		productDao.food_reqeust_insert(myMap);
		
	//	return "redirect:/list";	
		
		
	//	mav.setViewName("Request_Food");   //view의 어디에 출력할까
	//	mav.addObject("emp_id", emp_id);
		
 	//	mav.addObject("update_result", update_result);
	//	mav.addObject("test_name", "testtt333ttttt");
	//	return mav;
		
	//	return "redirect:/Request_Food";	
	//	return "redirect:/index";
		
		mav.setViewName("Request_Food");   //view의 어디에 출력할까
		mav.addObject("emp_id", emp_id);
		mav.addObject("cancel_checking", "n");
		mav.addObject("confirm_checking", "y");
		mav.addObject("select_box", select_box);
		return mav;
	}
		
	////////////////////취소 버튼을 클릭 했을 때 /////
	@RequestMapping("/Request_Food_cancle")
	public ModelAndView  Request_Food_cancle(String emp_id,String select_box) {
	System.out.println("----------/cancle<--------");
	
	System.out.println("----------/cancle --> Into emp_id<--------::::::"+emp_id);
	
	System.out.println("----------/cancle 숫자 --> Into confirm_no<--------::::::"+select_box);
	
	Map<String, Object> myMap = new HashMap<>();
	
	
	myMap.put("emp_id", emp_id);
	myMap.put("select_box", select_box);
	
	productDao.food_reqeust_cancel(myMap);
	
	
	
	ModelAndView mav = new ModelAndView();
	
	
	
	
	mav.setViewName("Request_Food");   //view의 어디에 출력할까
	mav.addObject("emp_id", emp_id);
	mav.addObject("cancel_checking", "y");
	mav.addObject("confirm_checking", "n");
	mav.addObject("select_box", select_box);
	
	return mav;
	
	
	
	}
///////////////////////////////////////////////////////////////////////////
	
	
	// 학습조직 등록
	@RequestMapping("/Mng_Study_org_register_result")
	public String Mng_Study_org_register_result() {
		System.out.println("----------/Into Mng_Study_org_register_result<--------");
		return "Mng_Study_org_register_result";
	}

	
	
	/////////////////////////////////////////////////////////////////////////////////////
	
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
	
	@RequestMapping("/Mng_Study_org_register")
	public String Mng_Study_org_register() {
		System.out.println("----------/Into Mng_Study_org_register<--------");
		return "Mng_Study_org_register";
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
