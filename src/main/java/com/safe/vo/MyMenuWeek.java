package com.safe.vo;
public class MyMenuWeek {
	int num;
	String id;
	int month;
	int week;
	int meal;
	String mon;
	String tue;
	String wed;
	String thu;
	String fri;
	String sat;
	String sun;
	String comment;	
	
	public MyMenuWeek() {}
	
	public MyMenuWeek(int num, String id, int month, int week, int meal, String mon, String tue, String wed, String thu,
			String fri, String sat, String sun, String comment) {
		super();
		this.num = num;
		this.id = id;
		this.month = month;
		this.week = week;
		this.meal = meal;
		this.mon = mon;
		this.tue = tue;
		this.wed = wed;
		this.thu = thu;
		this.fri = fri;
		this.sat = sat;
		this.sun = sun;
		this.comment = comment;
	}


	@Override
	public String toString() {
		return "MyMenuWeek [num=" + num + ", id=" + id + ", month=" + month + ", week=" + week + ", meal=" + meal
				+ ", mon=" + mon + ", tue=" + tue + ", wed=" + wed + ", thu=" + thu + ", fri=" + fri + ", sat=" + sat
				+ ", sun=" + sun + ", comment=" + comment + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public int getMeal() {
		return meal;
	}

	public void setMeal(int meal) {
		this.meal = meal;
	}

	public String getMon() {
		return mon;
	}

	public void setMon(String mon) {
		this.mon = mon;
	}

	public String getTue() {
		return tue;
	}

	public void setTue(String tue) {
		this.tue = tue;
	}

	public String getWed() {
		return wed;
	}

	public void setWed(String wed) {
		this.wed = wed;
	}

	public String getThu() {
		return thu;
	}

	public void setThu(String thu) {
		this.thu = thu;
	}

	public String getFri() {
		return fri;
	}

	public void setFri(String fri) {
		this.fri = fri;
	}

	public String getSat() {
		return sat;
	}

	public void setSat(String sat) {
		this.sat = sat;
	}

	public String getSun() {
		return sun;
	}

	public void setSun(String sun) {
		this.sun = sun;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	
}
