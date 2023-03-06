package com.example.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	@Autowired
	SqlSession sqlSession;

	public List<Map<String, Object>> list(String product_name) {
		return sqlSession.selectList("product.list", "%" + product_name + "%");
	}
	
	// 간편식 신처에서 조회 하는 것들
	
	public List<Map<String, Object>> emp_id_check(String emp_id) {
		return sqlSession.selectList("product.request_food_into", emp_id);
	}
	

	// 간편식 처음 들어와서 하는 조회들
	
	 //1. 오늘의 전체 음식 가능 한 잔량 수량

	 public List<Map<String, Object>> Food_Today_remain_qty(String emp_id) {
		return sqlSession.selectList("product.Food_Today_remain_qty", emp_id);
	  }
	 //2. 로그인한 사람 id로 신청한 수량의 갯수
	
	 public List<Map<String, Object>> Food_Today_quest_qty(String emp_id) {
		return sqlSession.selectList("product.Food_Today_quest_qty", emp_id);
	  }
	
	//3. 신청한 사람의 음식 중류는 -->
		
		 public List<Map<String, Object>> Food_Today_choiced(String emp_id) {
			return sqlSession.selectList("product.Food_Today_choiced", emp_id);
		  }
		 
    //4. 오늘 전체로 신청된 응식들의 잔량 -->
			
	    public List<Map<String, Object>> Food_Today_remained_qty(String emp_id) {
			return sqlSession.selectList("product.Food_Today_remained_qty", emp_id);
		  }
		 
	    // 5. 오늘 왼쪽 001로 전체로 신청된 응식들의 잔량 -->
		
	    public List<Map<String, Object>> Food_Today_001_remained_qty(String emp_id) {
			return sqlSession.selectList("product.Food_Today_001_remained_qty", emp_id);
		  }
	    
	    //6. 오늘 오른쪽 002로 전체로 신청된 응식들의 잔량 -->
		
	    public List<Map<String, Object>> Food_Today_002_remained_qty(String emp_id) {
			return sqlSession.selectList("product.Food_Today_002_remained_qty", emp_id);
		  }
	    
	    public List<Map<String, Object>> My_Today_001(String emp_id) {
			return sqlSession.selectList("product.My_Today_001", emp_id);
		  }
	    
	    public List<Map<String, Object>> My_Today_002(String emp_id) {
			return sqlSession.selectList("product.My_Today_002", emp_id);
		  }
	/////////////////////////////////////////////////////
	//3.03 food confirm 만들어 보기
	    public void food_reqeust_insert(Map<String, Object> map) {
			sqlSession.insert("food_reqeust_insert", map);
		}
	    
	    
	  //3.03 food confirm 만들어 보기
	    public void food_reqeust_cancel(Map<String, Object> map) {
			sqlSession.insert("food_reqeust_cancel", map);
		}
    ////////////////////////////////////////////
	public void insert(Map<String, Object> map) {
		sqlSession.insert("product.insert", map);
	}
	
	
	

	public Map<String, Object> detail(String product_code) {
		return sqlSession.selectOne("product.detail", product_code);
	}

	public void update(Map<String, Object> map) {
		sqlSession.update("product.update", map);
	}

	public void delete(int product_code) {
		sqlSession.delete("product.delete", product_code);
	}

	public String filename(int product_code) {
		return sqlSession.selectOne("product.filename", product_code);
	}

}
