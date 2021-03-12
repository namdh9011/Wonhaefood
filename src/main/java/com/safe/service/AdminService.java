package com.safe.service;
import java.util.List;

import com.safe.vo.Admin;

public interface AdminService {
	public List<Admin> selectAll();
	public void insert(Admin a);
	public void delete(String num);
	public void insertFortune(String fortune);
}
