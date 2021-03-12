package com.safe.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.safe.service.MemberService;
import com.safe.service.QnAService;
import com.safe.vo.QnA;

@RestController
@CrossOrigin
public class QnAController {
	@Autowired
	QnAService qservice;

	@Autowired
	MemberService mservice;

	@RequestMapping(value = "/qnaID", method = RequestMethod.GET)
	public  Map<String, String> qna(HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		String id = (String) session.getAttribute("id");
		String name = (String) session.getAttribute("name");
		map.put("id", id);
		map.put("name", name);
		return map;
	}

	@RequestMapping(value = "/qnas", method = RequestMethod.GET)
	public List<QnA> selectAll() {
		return qservice.selectAll();
	}

	@RequestMapping(value = "/qnas/{num}", method = RequestMethod.GET)
	public QnA selectOne(@PathVariable String num) {
		return qservice.selectOne(num);
	}

	@RequestMapping(value = "/qnas", method = RequestMethod.POST)
	public Map<String, String> insert(@RequestBody QnA q) {
		HashMap<String, String> map = new HashMap<String, String>();
		qservice.insert(q);
		map.put("result", "추가성공");
		return map;
	}

	@RequestMapping(value = "/qnascontent", method = RequestMethod.PUT)
	public Map<String, String> updateContent(@RequestBody QnA q) {
		qservice.updateContent(q);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "수정성공");
		return map;
	}

	@RequestMapping(value = "/qnascomment", method = RequestMethod.PUT)
	public Map<String, String> update(@RequestBody QnA b) {
		qservice.updateComment(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "수정성공");
		return map;
	}

	@RequestMapping(value = "/qnas/{num}", method = RequestMethod.DELETE)
	public Map<String, String> delete(@PathVariable String num) {
		qservice.delete(num);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "삭제성공");
		return map;
	}

	@RequestMapping(value = "/qnasserti/{title}", method = RequestMethod.GET)
	public List<QnA> findByTitle(@PathVariable String title) {
		return qservice.findByTitle(title);
	}

	@RequestMapping(value = "/qnasserid/{id}", method = RequestMethod.GET)
	public List<QnA> findById(@PathVariable String id) {
		return qservice.findById(id);
	}
}
