package com.safe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.BoardService;
import com.safe.service.MemberService;
import com.safe.vo.Board;
import com.safe.vo.Member;


@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	
	@Autowired
	MemberService mservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@GetMapping("/boardlist.food")
	public String boardList(Model model, HttpSession session) {
		if(session.getAttribute("msg")!=null) {
			session.setAttribute("msg", null);
		}
		String id = (String)session.getAttribute("id");
		List<Board> list = bservice.selectAll();
		model.addAttribute("list", list);
		model.addAttribute("id", id);
		return "list";
	}
	
	@GetMapping("/reboardlist.food")
	public String reboardlist(Model model, HttpSession session) {
		List<Board> list = bservice.selectAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@GetMapping("/relistread.food")
	public String relistread(HttpSession session,Model model) {
		String num = (String)session.getAttribute("num");
		Board b = bservice.selectOne(num);
		model.addAttribute("cc", b);
		return "listread";
	}
	
	@GetMapping("/listread.food")
	public String searchBoard(HttpSession session, String num, Model model) {
		if(session.getAttribute("msg")!=null) {
			session.setAttribute("msg", null);
			session.setAttribute("num", null);
		}
		Board b = bservice.selectOne(num);
		model.addAttribute("cc", b);
		return "listread";
	}

	@GetMapping("/listinsert.food")
	public String insert(HttpSession session) {
		
		if(session.getAttribute("id")!=null) //session.equals(null)
			return "listinsert";
		else {
			session.setAttribute("msg",  "로그인 하세요.");
			return "redirect:reboardlist.food";
		}
	}

	@PostMapping("/insertprocess.food")
	public String insertProcess(String id, String content, String title) {
		Member m = mservice.selectOne(id);
		Board b = new Board(id, null, m.getName(), null, title, content, null);
		bservice.insert(b);
		return "redirect:boardlist.food";
	}

	@GetMapping("/deletelist.food")
	public String delete(HttpSession session,String id, String num) {
		if(session.getAttribute("id")==null || !session.getAttribute("id").equals(id)) {
			session.setAttribute("msg", "삭제 권한이 없습니다.");
			session.setAttribute("num", num);
			return "redirect:relistread.food";
		}
		bservice.delete(num);
		return "redirect:boardlist.food";
	}
	
	
	
	@PostMapping("/listsearch.food")
	public String search(String search, String searchtext, Model model) {
		List<Board> list = null;
		if(search.contentEquals("id")) {
			list = bservice.findById(searchtext);
		}else if(search.contentEquals("title")) {
			list = bservice.findByTitle(searchtext);
		}
		model.addAttribute("list", list);
		return "listsearch";
	}
	
	@GetMapping("/updatelist.food")
	public String update(String num, Model model, HttpSession session,String id) {
//		System.out.println(id);
//		System.out.println(session.getAttribute("id"));
		if(session.getAttribute("id")==null || !session.getAttribute("id").equals(id)) {
			session.setAttribute("msg", "수정 권한이 없습니다.");
			session.setAttribute("num", num);
			return "redirect:relistread.food";
		}
			
		Board b = bservice.selectOne(num);
		model.addAttribute("cc", b);
		return "listupdate";
	}
	@PostMapping("/updatelist.food")
	public String updateProcess(Board b) {
		Board bb = new Board(b.getId(), b.getNum(), null, null, b.getTitle(), b.getContent(),null);
		bservice.update(bb);
		return "redirect:boardlist.food";
	}
}
