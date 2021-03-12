package com.safe.dao;

import com.safe.vo.Profile;

public interface ProfileDao {
	public Profile select(String id);
	public void insert(Profile p);
	public void update(Profile p);
	public void delete(String id);
	public void updateFortune(Profile p);
	public String getFortune(int a);
	public int getMaxNum();
}
