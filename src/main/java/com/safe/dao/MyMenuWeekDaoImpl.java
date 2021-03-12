package com.safe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.MyMenuWeek;



@Repository("mmwdao")
public class MyMenuWeekDaoImpl implements MyMeunWeekDao {
	
	@Autowired
	SqlSession session;
	
	@Override
	public List<MyMenuWeek> selectAll(String id) {
		return session.selectList("mymenuweek.selectAll", id);
	}
	@Override
	public List<MyMenuWeek> selectWeekAll(MyMenuWeek m) {
		return session.selectList("mymenuweek.selectWeekOne", m);
	}

	@Override
	public MyMenuWeek selectOne(String num) {
		
		return session.selectOne("mymenuweek.selectOne", num);
	}

	@Override
	public void insert(MyMenuWeek m) {
		session.insert("mymenuweek.insertmonweek",m);
	}

	@Override
	public MyMenuWeek selectmonweek(MyMenuWeek m) {
		return session.selectOne("mymenuweek.selectmonweekmeal", m);
	}

	@Override
	public void update(MyMenuWeek m) {
		session.update("mymenuweek.updatemonweek",m);
		
	}

	@Override
	public List<MyMenuWeek> selectMonthAll(MyMenuWeek m) {
		return session.selectList("mymenuweek.selectMonthAll",m);
	}
	@Override
	public void delete(MyMenuWeek m) {
		session.delete("mymenuweek.deleteone",m);
	}
}
