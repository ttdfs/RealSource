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
