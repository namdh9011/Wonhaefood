package com.safe.service;

import java.util.List;

import com.safe.vo.Member;
import com.safe.vo.MyFood;

public interface MemberService {
	public boolean checkMember(String id, String pass);

	public void insert(Member m);
	public void update(Member b);

	public Member selectOne(String id);

	public void delete(String id);

	public List<MyFood> AllMyfood(String id);
	public MyFood selectMyfood(MyFood mf);

	public void updateMyfood(String id, int code, int count);
	public void deleteMyfood(MyFood mf);
	
	/**
	 * 식품 코드에 해당하는 식품정보를 검색해서 반환. 
	 * @param code	검색할 식품 코드
	 * @return	식품 코드에 해당하는 식품 정보, 없으면 null이 리턴됨
	 */
	
}
