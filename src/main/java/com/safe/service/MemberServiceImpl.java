package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IMember;
import com.safe.vo.Food;
import com.safe.vo.Member;
import com.safe.vo.MyFood;

@Service("mservice")
public class MemberServiceImpl implements MemberService{
	@Autowired
	IMember mdao;
	
	@Autowired
	FoodService fservice;
	
	@Override
	public boolean checkMember(String id, String pass) {
		return mdao.checkMember(id, pass);
	}

	@Override
	public void insert(Member m) {
		mdao.insert(m);
	}

	@Override
	public void update(Member b) {
		mdao.update(b);
	}

	@Override
	public Member selectOne(String id) {
		return mdao.selectOne(id);
	}

	@Override
	public void delete(String id) {
		mdao.delete(id);
	}

	@Override
	public List<MyFood> AllMyfood(String id) {
		return mdao.AllMyfood(id);
	}
	public MyFood selectMyfood(MyFood mf) {
		return mdao.selectMyfood(mf);
	}

	@Override
	public void updateMyfood(String id, int code, int count) {
		MyFood mf = new MyFood(id,code,count);
		MyFood mf2 = mdao.selectMyfood(mf);
		if(mf2 == null) {
			mdao.insertMyfood(mf);
		}else {
			mf2.setCount(mf2.getCount()+count);
		}
		mdao.updateMyfood(mf2);
	}

	@Override
	public void deleteMyfood(MyFood mf) {
		mdao.deleteMyfood(mf);
	}

}
