package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.MyMeunWeekDao;
import com.safe.vo.MyMenuWeek;


@Service("mmwservice")
public class MyMenuWeekServiceImpl implements MyMenuWeekService{
	
	@Autowired
	MyMeunWeekDao dao;

	@Override
	public List<MyMenuWeek> selectAll(String id) {
		return dao.selectAll(id);
	}

	@Override
	public MyMenuWeek selectOne(String num) {
		return dao.selectOne(num);
	}

	@Override
	public void insert(MyMenuWeek m) {
		dao.insert(m);
	}

	@Override
	public MyMenuWeek selectmonweek(MyMenuWeek m) {
		return dao.selectmonweek(m);
	}

	@Override
	public void update(MyMenuWeek m) {
		dao.update(m);
		
	}

	@Override
	public List<MyMenuWeek> selectMonthAll(MyMenuWeek m) {
		return dao.selectMonthAll(m);
	}

	@Override
	public List<MyMenuWeek> selectWeekAll(MyMenuWeek m) {
		return dao.selectWeekAll(m);
	}

	@Override
	public void delete(MyMenuWeek m) {
		dao.delete(m);
		
	}
}
