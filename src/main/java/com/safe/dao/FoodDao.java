package com.safe.dao;
//여기수정
import java.util.ArrayList;
import java.util.List;

import com.safe.vo.Food;
import com.safe.vo.Pagination;

public interface FoodDao {
	/**
	 
	 * 식품 영양 정보 및 식품 정보를 xml 파일에서 로딩하는 기능 
	 */
	//public void loadData();
	/**
	 * 검색 조건(key) 검색 단어(word)에 해당하는 식품 정보(Food)를  검색해서 반환.  
	 * @param bean  검색 조건과 검색 단어가 있는 객체
	 * @return 조회한 식품 목록
	 */
	public List<Food> searchAll();
	
	/**
	 * 식품 코드에 해당하는 식품정보를 검색해서 반환. 
	 * @param code	검색할 식품 코드
	 * @return	식품 코드에 해당하는 식품 정보, 없으면 null이 리턴됨
	 */
	public Food selectOne(int code);
	
	
	/**
	 * 가장 많이 검색한 Food  정보 리턴하기 
	 * web에서 구현할 내용.  
	 * @return
	 */
	public ArrayList<Food> searchBest();
	
	public ArrayList<Food> searchBestIndex();
	public List<Food> search(String condition, String word);
	public void update(Food f);

	public int countUp(int code);
	public int getFoodListCnt() throws Exception;
	public List<Food> getList(Pagination pagination);
}
