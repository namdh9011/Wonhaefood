package com.safe.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.FoodDao;
import com.safe.vo.Food;
import com.safe.vo.Pagination;

@Service("fservice")
public class FoodServiceImpl implements FoodService{
	@Autowired
	FoodDao fdao;
	
	@Override
	public List<Food> searchAll() {
		return fdao.searchAll();
	}

	@Override
	public Food selectOne(int code) {
		return fdao.selectOne(code);
	}

	@Override
	public ArrayList<Food> searchBest() {
		return fdao.searchBest();
	}

	@Override
	public ArrayList<Food> searchBestIndex() {
		return fdao.searchBestIndex();
	}

	@Override
	public List<Food> search(String condition, String word) {
		return fdao.search(condition, word);
	}

	@Override
	public int countUp(int code) {
		return fdao.countUp(code);
	}

	@Override
	public void update(Food f) {
		fdao.update(f);
	}

	@Override
	public int getFoodListCnt() throws Exception {
		return fdao.getFoodListCnt();
	}
	
	@Override
	public List<Food> getList(Pagination pagination) {
		return fdao.getList(pagination);
	}
}
