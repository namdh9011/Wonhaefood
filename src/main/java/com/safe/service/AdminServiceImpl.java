package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.dao.AdminDao;
import com.safe.vo.Admin;


@Repository("adservice")
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDao dao;

	@Override
	public List<Admin> selectAll() {
		return dao.selectAll();
	}
	@Override
	public void insert(Admin a) {
		dao.insert(a);
	}
	@Override
	public void delete(String num) {
		dao.delete(num);
		
	}
	@Override
	public void insertFortune(String fortune) {
		dao.insertFortune(fortune);
		
	}
}
