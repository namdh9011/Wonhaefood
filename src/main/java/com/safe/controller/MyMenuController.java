package com.safe.controller;




import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.FoodService;
import com.safe.service.MyMenuWeekService;
import com.safe.vo.Food;
import com.safe.vo.MyMenuWeek;

@Controller
public class MyMenuController {
	@Autowired
	MyMenuWeekService mmwservice;

	@Autowired
	FoodService fservice;
	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	
	@GetMapping("/mmwselect.food")
	public String mymenuweek(Model model, HttpSession session,HttpServletResponse response) throws IOException {
		List<MyMenuWeek> list = null;
		List<MyMenuWeek> addlist = new LinkedList<>();
		boolean[] v = new boolean[1000];
		if (session.getAttribute("id") != null) {// session.equals(null)
			list = mmwservice.selectAll((String)session.getAttribute("id"));
			for(int i=0;i<list.size();i++) {
				int a = list.get(i).getMonth()*5+list.get(i).getWeek();
				if(!v[a]) {
					v[a]=true;
					addlist.add(list.get(i));
				}
			}
			model.addAttribute("list", addlist);
			return "mymenuweekselect";
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 하세요.'); history.go(-1);</script>");
			out.flush();
		}
		return "mymenuweekselect";
	}
//	@GetMapping("/mmwselectone.food")
//	public String mymenuweekone(Model model,String num) {
//		MyMenuWeek week = mmwservice.selectOne(num);
//		model.addAttribute("week", week);
//		return "mymenuweekone";
//	}
	@GetMapping("/mmwselectweekone.food")
	public String mmweekone(HttpSession session,Model model,int month,int week) {
		String idd = (String)session.getAttribute("id");
		MyMenuWeek mm = new MyMenuWeek(0, idd, month, week,0, "", "", "", "", "", "", "", "");
		List<MyMenuWeek> list = mmwservice.selectWeekAll(mm);
		model.addAttribute("m",mm);
		model.addAttribute("list", list);
		return "mymenuweekone";
	}
	@GetMapping("/mmwselectmonthone.food")
	public String mymenumonthone(Model model,HttpSession session, int month) {
		String idd = (String)session.getAttribute("id");
		MyMenuWeek mm = new MyMenuWeek(0, idd, month, 0,0, "", "", "", "", "", "", "", "");
		List<MyMenuWeek> list = mmwservice.selectMonthAll(mm);
		model.addAttribute("m",mm);
		model.addAttribute("list", list);
		return "mymenumonthone";
	}
	@GetMapping("/mmwsearch.food")
	public String mymenuweeksea(Model model, String word) {
		List<Food> list = fservice.search("name", word);
		model.addAttribute("list", list);
		return "search";
	}
	@GetMapping("/mmwupdate.food")
	public String mymenuweekupdate(HttpSession session, Model model, String num) {
		MyMenuWeek m = mmwservice.selectOne(num);
		model.addAttribute("m",m);
		return "mymenuweekupdate";
	}
	@GetMapping("/mmwdeleteone.food")
	public String mymenudelete(HttpSession session, Model model, int month, int week) {
		String idd = (String)session.getAttribute("id");
		MyMenuWeek mm = new MyMenuWeek(0, idd, month, week,0, "", "", "", "", "", "", "", "");
		mmwservice.delete(mm);
		return "redirect:mmwselect.food";
	}
	@PostMapping("/mmwupdate.food")
	public String mymenuweekupdateprocess(Model model, MyMenuWeek m) {
//		System.out.println(m);
		String s = m.getNum()+"";
		mmwservice.update(m);
		return "redirect:mmwselectweekone.food?month="+m.getMonth()+"&week="+m.getWeek();
	}
	@PostMapping("/mmwinsert.food")
	public String mymenuweekinsert(Model model, HttpSession session, MyMenuWeek m) {
			for(int i=1;i<=3;i++) {
				MyMenuWeek mm = new MyMenuWeek(0, (String)session.getAttribute("id"), m.getMonth(), m.getWeek(),i, "", "", "", "", "", "", "","");
				MyMenuWeek compare = mmwservice.selectmonweek(mm);
				if(compare==null) {
					mmwservice.insert(mm);
				}else {
//					session.setAttribute("msg",  "null");
				}
			}
		return "redirect:mmwselect.food";
	}

}
