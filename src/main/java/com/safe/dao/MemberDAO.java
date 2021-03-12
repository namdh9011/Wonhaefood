package com.safe.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.Food;
import com.safe.vo.Member;
import com.safe.vo.MyFood;

@Repository("mdao")
public class MemberDAO implements IMember {
	@Autowired
	SqlSession session;

	public boolean checkMember(String id, String pass) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);// 검색조건
		map.put("pw", pass);// 검색어
		Member m = session.selectOne("checkMember", map);
		// session.commit();
		if (m != null) {
			return true;
		} else
			return false;
	}

	public Member selectOne(String id) {
		return session.selectOne("member.selectOne", id);
	}

	public void insert(Member b) {
		session.insert("member.insert", b);
	}

	public void update(Member b) {
		session.update("member.update", b);
	}

	public void delete(String id) {
		session.delete("member.delete", id);
	}

	@Override
	public List<MyFood> AllMyfood(String id) {
		return session.selectList("member.AllMyfood",id);
	}

	@Override
	public void insertMyfood(MyFood mf) {
		session.insert("member.insertMyfood", mf);
	}
	public void updateMyfood(MyFood mf) {
		session.update("member.updateMyfood", mf);
	}
	public void deleteMyfood(MyFood mf) {
		session.update("member.deleteMyfood", mf);
	}

	@Override
	public MyFood selectMyfood(MyFood mf) {
		return session.selectOne("member.selectMyfood", mf);
	}
}
