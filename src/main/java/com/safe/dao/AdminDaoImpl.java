package com.safe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Admin;


@Repository("addao")
public class AdminDaoImpl implements AdminDao {
	@Autowired
	SqlSession session;

	@Override
	public List<Admin> selectAll() {
		return session.selectList("admin.selectAll");
	}

	@Override
	public void insert(Admin a) {
		session.selectList("admin.insert",a);
	}

	@Override
	public void delete(String num) {
		session.delete("admin.delete",num);
	}

	@Override
	public void insertFortune(String fortune) {
		session.insert("admin.insertfortune",fortune);
	}
}
