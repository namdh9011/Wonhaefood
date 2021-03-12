package com.safe.service;

import com.safe.vo.Profile;

public interface ProfileService {
	public Profile select(String id);
	public void insert(Profile p);
	public void update(Profile p);
	public void updateFortune(Profile p);
	public void delete(String id);
	public String getFortune(int a);
	public int getMaxNum();
}
