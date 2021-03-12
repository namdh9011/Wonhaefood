package com.safe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Food;
import com.safe.vo.Pagination;

@Repository("fdao")
public class FoodDaoImpl implements FoodDao {
	@Autowired
	SqlSession session;

	public List<Food> searchAll() {
		return session.selectList("food.searchAll");
	}

	public Food selectOne(int code) {
		return session.selectOne("food.selectOne",code);
	}

	public ArrayList<Food> searchBest() {
		return null;
	}

	public ArrayList<Food> searchBestIndex() {
		return null;
	}

	@Override
	public List<Food> search(String condition, String word) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("key", condition);//검색조건
		map.put("word", word);//검색어	
		return session.selectList("search", map);
	}
	
	public int countUp(int code) {
		return session.update("food.countUp",code);
	}

	@Override
	public void update(Food f) {
		session.update("food.update", f);
	}
	
	@Override
	public int getFoodListCnt() throws Exception {
		return session.selectOne("food.getFoodListCnt");
	}

	@Override
	public List<Food> getList(Pagination pagination) {
		return session.selectList("food.getFoodList", pagination);
	}
}
