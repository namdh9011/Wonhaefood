package com.safe.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Profile;

@Repository("pdao")
public class ProfileDaoImpl implements ProfileDao {
	@Autowired
	SqlSession session;
	
	@Override
	public Profile select(String id) {
		return session.selectOne("member.selectProfile", id);

	}

	@Override
	public void insert(Profile p) {
		session.insert("member.insertProfile", p);
	}

	@Override
	public void update(Profile p) {
		session.update("member.updateProfile", p);
	}

	@Override
	public void delete(String id) {
		session.delete("member.defaultProfile", id);

	}

	@Override
	public void updateFortune(Profile p) {
		session.update("member.updateFortune", p);
	}

	@Override
	public String getFortune(int a) {
		return session.selectOne("member.selectFortune", a);
	}

	@Override
	public int getMaxNum() {
		return session.selectOne("member.selectMaxNum");
	}

}
