package com.safe.dao;

import java.util.List;

import com.safe.vo.MyMenuWeek;

public interface MyMeunWeekDao {
	public List<MyMenuWeek> selectAll(String id);
	public MyMenuWeek selectOne(String num);
	public List<MyMenuWeek> selectWeekAll(MyMenuWeek m);
	public MyMenuWeek selectmonweek(MyMenuWeek m);
	public List<MyMenuWeek> selectMonthAll(MyMenuWeek m);
	public void insert(MyMenuWeek m);
	public void update(MyMenuWeek m);
	public void delete(MyMenuWeek m);
}
