package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.QnADao;
import com.safe.vo.QnA;

@Service("qservice")
public class QnAServiceImpl implements QnAService{
	
	@Autowired
	QnADao dao;
	
	@Override
	public List<QnA> selectAll() {
		return dao.selectAll();
	}

	@Override
	public QnA selectOne(String num) {
		return dao.selectOne(num);
	}

	@Override
	public void insert(QnA q) {
		dao.insert(q);
	}

	@Override
	public void updateContent(QnA q) {
		dao.updateContent(q);
	}
	@Override
	public void updateComment(QnA q) {
		dao.updateComment(q);
	}

	@Override
	public void countUp(String num) {
		dao.countUp(num);
	}

	@Override
	public void delete(String num) {
		dao.delete(num);
	}

	@Override
	public List<QnA> findByTitle(String title) {
		return dao.findByTitle(title);
	}

	@Override
	public List<QnA> findById(String id) {
		return dao.findById(id);
	}
	
}
