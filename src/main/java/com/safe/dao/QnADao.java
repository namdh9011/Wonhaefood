package com.safe.dao;

import java.util.List;

import com.safe.vo.QnA;



public interface QnADao {
	public List<QnA> selectAll();
	public QnA selectOne(String num);
	public void insert(QnA b);
	public void updateContent(QnA b);
	public void updateComment(QnA b);
	public void countUp(String num);
	public void delete(String num);
	public List<QnA> findByTitle(String title);
	public List<QnA> findById(String id);
}
