package com.safe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.ProfileDao;
import com.safe.vo.Profile;

@Service("pservice")
public class ProfileServiceImpl implements ProfileService {
	@Autowired
	ProfileDao pdao;
	
	@Override
	public Profile select(String id) {
		return pdao.select(id);
	}

	@Override
	public void insert(Profile p) {
		pdao.insert(p);
	}

	@Override
	public void update(Profile p) {
		pdao.update(p);
	}

	@Override
	public void delete(String id) {
		pdao.delete(id);
	}

	@Override
	public void updateFortune(Profile p) {
		pdao.updateFortune(p);
	}

	@Override
	public String getFortune(int a) {
		return pdao.getFortune(a);
	}

	@Override
	public int getMaxNum() {
		return pdao.getMaxNum();
	}

}
