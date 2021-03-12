package com.safe.vo;

public class QnA {
	String id;
	String num;
	String name;
	String wdate;
	String title;
	String content;
	String comment;
	String count;
	public QnA() {}
	
	public QnA(String id, String num, String name, String wdate, String title, String content, String comment,
			String count) {
		this.id = id;
		this.num = num;
		this.name = name;
		this.wdate = wdate;
		this.title = title;
		this.content = content;
		this.comment = comment;
		this.count = count;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "QnA [id=" + id + ", num=" + num + ", name=" + name + ", wdate=" + wdate + ", title=" + title
				+ ", content=" + content + ", comment=" + comment + ", count=" + count + "]";
	}
	
}
