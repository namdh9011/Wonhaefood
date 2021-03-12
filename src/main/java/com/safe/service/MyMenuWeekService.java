package com.safe.service;

import java.util.List;

import com.safe.vo.MyMenuWeek;


public interface MyMenuWeekService {
	public List<MyMenuWeek> selectAll(String id);
	public MyMenuWeek selectOne(String num);
	public List<MyMenuWeek> selectWeekAll(MyMenuWeek m);
	public List<MyMenuWeek> selectMonthAll(MyMenuWeek m);
	public MyMenuWeek selectmonweek(MyMenuWeek m);
	public void insert(MyMenuWeek m);
	public void update(MyMenuWeek m);
	public void delete(MyMenuWeek mm);
}
