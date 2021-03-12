package com.safe.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.safe.service.FoodService;
import com.safe.service.MemberService;
import com.safe.service.ProfileService;
import com.safe.vo.Food;
import com.safe.vo.Member;
import com.safe.vo.MyFood;
import com.safe.vo.Profile;

@Controller
public class MemberController {
	@Autowired
	MemberService mservice;
	
	@Autowired
	ProfileService pservice;

	@Autowired
	FoodService fservice;

	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}

	@PostMapping("/loginProcess.food")
	public String loginProcess(HttpSession session, String id, String pass,HttpServletResponse response)throws Exception {
		if (mservice.checkMember(id, pass)) {
			String name = mservice.selectOne(id).getName();
			String img = pservice.select(id).getImg();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("img", img);
			Profile pro = new Profile();
			int len=pservice.getMaxNum()-1;
			int a = (int)(Math.random()*len)+1;
			String fort = pservice.getFortune(a);
			pro.setId(id);
			pro.setFortune(fort);
			session.setAttribute("fort", fort);
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('★"+fort+"★');location.href='/main.food';</script>");
	        out.flush();
			pservice.updateFortune(pro);
			return "redirect:/main.food";
		} else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('ID/PW 를 확인해주세요.');history.go(-1);</script>");
	        out.flush();
		}
		return "redirect:/main.food";
	}

	@GetMapping("/login.food")
	public String login(HttpSession session) {
		return "login";
	}

	@GetMapping(value = "/logout.food")
	public String logout(HttpSession session) {
		session.setAttribute("id", null);
		session.setAttribute("name", null);
		session.setAttribute("img", null);
		return "redirect:/main.food";
	}

	@GetMapping("/insertForm.food")
	public String insertForm() {
		return "signup";
	}

	@PostMapping("/signup.food")
	public String signup(HttpServletRequest request, @RequestPart MultipartFile files,HttpServletResponse response) throws Exception {
		if(mservice.selectOne(request.getParameter("id")) !=null) {
			 response.setContentType("text/html; charset=UTF-8");
		     PrintWriter out = response.getWriter();
		     out.println("<script>alert('이미 아이디가 존재합니다.');history.go(-1);</script>");
		     out.flush();
		}
		String sourceFileName = files.getOriginalFilename();
		System.out.println("*************************************************");
		System.out.println(sourceFileName.length());
		System.out.println("*************************************************");
		String img;
		if(sourceFileName.length() !=0) {
			String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
			File destinationFile;
			String destinationFileName;
			Path path = new Path();
			String fileUrl = path.imgpath+"profile\\";
			destinationFileName = request.getParameter("id")+ "." + sourceFileNameExtension; 
			destinationFile = new File(fileUrl + destinationFileName); 
			destinationFile.getParentFile().mkdirs(); 
			files.transferTo(destinationFile);
			img = "resources/profile/"+destinationFileName;
		}else {
			img="resources/profile/noimg.jpg";
		}
		Member m = new Member();
		m.setId(request.getParameter("id"));
		m.setPw(request.getParameter("pw"));
		m.setName(request.getParameter("name"));
		m.setPhone(request.getParameter("phone"));
		m.setAllergy(request.getParameter("allergy"));
		
		Profile p = new Profile();
		p.setId(request.getParameter("id"));
		p.setImg(img);
		
		mservice.insert(m);
		pservice.insert(p);
		return "redirect:/main.food";
	}

	@GetMapping("/delete.food")
	public String delete(HttpSession session) {
		String id = (String) session.getAttribute("id");
		session.setAttribute("id", null);
		session.setAttribute("name", null);
		session.setAttribute("img", null);
		mservice.delete(id);
		return "redirect:/main.food";
	}

	@PostMapping("/update.food")
	public String update(HttpSession session,HttpServletRequest request, @RequestPart MultipartFile files) throws Exception {
		Member m2 = mservice.selectOne(request.getParameter("id"));
		Member m = new Member();
		m.setId(request.getParameter("id"));
		m.setPw(request.getParameter("pw"));
		m.setName(request.getParameter("name"));
		m.setPhone(request.getParameter("phone"));
		m.setAllergy(request.getParameter("allergy"));
		if (m.getAllergy() == null)
			m.setAllergy(m2.getAllergy());
		mservice.update(m);
		Profile p = pservice.select(request.getParameter("id"));
		String sourceFileName = files.getOriginalFilename();
		if(sourceFileName.length() !=0) {
			String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
			File destinationFile;
			String destinationFileName;
			Path path = new Path();
			String fileUrl = path.imgpath+"profile\\";
			destinationFileName = request.getParameter("id")+ "." + sourceFileNameExtension; 
			destinationFile = new File(fileUrl + destinationFileName); 
			destinationFile.getParentFile().mkdirs(); 
			files.transferTo(destinationFile);
			p.setImg("resources/profile/"+destinationFileName);
		}
		pservice.update(p);
		session.setAttribute("img", p.getImg());
		System.out.println("여기 **************************************************");
		System.out.println(p.getImg());
		System.out.println("여기 **************************************************");
		
		return "redirect:/main.food";
	}
	
	@GetMapping("/updateForm.food")
	public String updateForm(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member m = mservice.selectOne(id);
		Profile p = pservice.select(id);
		model.addAttribute("m", m);
		model.addAttribute("p", p);
		return "memberInfo";
	}

	@GetMapping("/mypage.food")
	public String myPage(Model model, HttpSession session, HttpServletResponse response) throws Exception{
		if (session.getAttribute("id") == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 하세요.'); history.go(-1);</script>");
			out.flush();
		}
		String id = (String) session.getAttribute("id");
		Member m = mservice.selectOne(id);
		String[] checks=null;
		HashSet<String> set = new HashSet<>();
		if(m.getAllergy() != null) {
			checks = m.getAllergy().split(",");
			for(int i=0;i<checks.length;i++)
				set.add(checks[i]);
		}
		List<MyFood> list = mservice.AllMyfood(id);
		Food total=new Food();
		for (int i = 0; i < list.size(); i++) {
			Food f = fservice.selectOne(list.get(i).getCode());
			if(f.getAllergy()=="") {
				continue;
			}
			System.out.println("여기");
			System.out.println(f);
			String[] check1 = f.getAllergy().split(",");
			System.out.println("여기2");
			for (int j = 0; j < check1.length; j++)
				if (set.contains(check1[j])) {
					list.get(i).setCheck("1");
					break;
				}
			list.get(i).setImg(f.getImg());
			list.get(i).setName(f.getName());
			list.get(i).setAllergy(f.getAllergy());
			total.setCalory(total.getCalory()+f.getCalory()*list.get(i).getCount());
			total.setCarbo(total.getCarbo()+f.getCarbo()*list.get(i).getCount());
			total.setProtein(total.getProtein()+f.getProtein()*list.get(i).getCount());
			total.setFat(total.getFat()+f.getFat()*list.get(i).getCount());
			total.setSugar(total.getSugar()+f.getSugar()*list.get(i).getCount());
			total.setFattyacid(total.getFattyacid()+f.getFattyacid()*list.get(i).getCount());
			total.setTransfat(total.getTransfat()+f.getTransfat()*list.get(i).getCount());
			System.out.println(f);
		}
		total.setCalory(Math.round(total.getCalory()*1000)/1000.0);
		model.addAttribute("list", list);
		model.addAttribute("b", total);
		
		return "mypage";
	}

	@GetMapping("safefood/addfood.food")
	public String updateMyfood(Model model, HttpSession session, int code, int count) {
		String id = (String) session.getAttribute("id");
		mservice.updateMyfood(id, code, count);
		Food f = fservice.selectOne(code);
		model.addAttribute("b", f);
		return "read";
	}

	@GetMapping("/deleteMyfood.food")
	public String deleteMyfood(String id, int code) {
		MyFood mf = new MyFood(id, code);
		mservice.deleteMyfood(mf);
		return "redirect:/mypage.food";
	}

	@PostMapping("/findProcess.food")
	public String findProcess(HttpSession session, String id, String phone,HttpServletResponse response) throws Exception{
		Member m = mservice.selectOne(id);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		if (m != null) {
			if (m.getPhone().equals(phone)) {
			    out.println("<script>alert('패스워드는"+ m.getPw()+ " 입니다.');history.go(-1);</script>");
			    out.flush();
			} else {
			     out.println("<script>alert('전화번호를 정확히 입력해주세요.');history.go(-1);</script>");
			     out.flush();
			}
		} else {
		     out.println("<script>alert('해당 ID가 존재하지 않습니다.');history.go(-1);</script>");
		     out.flush();
		}
		return "redirect:/login.food";
	}

	@GetMapping("/findPW.food")
	public String findPW(HttpSession session) {
		return "findpw";
	}
	
	@GetMapping("/deleteProfile.food")
	public String deleteProfile(HttpSession session) {
		String id = (String)session.getAttribute("id");
		pservice.delete(id);
		Profile p = pservice.select(id);
		session.setAttribute("img", p.getImg());
		return "redirect:/updateForm.food";
	}

}
