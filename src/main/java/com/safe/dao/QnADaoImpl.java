package com.safe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.QnA;



@Repository("qdao")
public class QnADaoImpl implements QnADao {
	
	@Autowired
	SqlSession session;
	
	public List<QnA> selectAll() {
		return session.selectList("qna.selectAll");
	}

	public QnA selectOne(String num) {
		session.update("qna.countUp",num);
		return session.selectOne("qna.selectOne",num);
	}

	public void insert(QnA q) {
		session.insert("qna.insert",q);
	}

	public void delete(String num) {
		session.delete("qna.delete",num);
	}

	public List<QnA> findById(String id) {
		return session.selectList("qna.findId",id);
	}

	public List<QnA> findByTitle(String title) {
		return session.selectList("qna.findTitle",title);
	}

	public void countUp(String num) {
		session.update("qna.countUp", num);
	}

	public void updateContent(QnA q) {
		session.update("qna.updateContent", q);
	}
	public void updateComment(QnA q) {
		session.update("qna.updateComment", q);
	}

}
