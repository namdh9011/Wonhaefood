package com.safe.controller;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
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

import com.safe.service.AdminService;
import com.safe.service.FoodService;
import com.safe.vo.Admin;
import com.safe.vo.Food;

@Controller
public class AdminController {
	@Autowired
	AdminService adservice;
	@Autowired
	FoodService fservice;
	
	
	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		ModelAndView mav = new ModelAndView("ErrorHandler");
		mav.addObject("msg", e.getMessage());
		return mav;
	}
	@GetMapping("/admin.food")
	public String relistread(Model model) {
		List<Admin> list = adservice.selectAll();
		model.addAttribute("list", list);
		return "admin";
	}
	@PostMapping("/adminrequest.food")
	public String adrequestread(HttpSession session,Model model,HttpServletRequest request, @RequestPart MultipartFile files,HttpServletResponse response) throws Exception{
		
		String sourceFileName = files.getOriginalFilename(); 
        String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
        File destinationFile;
        String destinationFileName;
        String fname = (String)session.getAttribute("id");
        Path path = new Path();
        String fileUrl = path.imgpath+"img2\\";
        destinationFileName = fname+"_"+request.getParameter("name") + "." + sourceFileNameExtension; 
        destinationFile = new File(fileUrl + destinationFileName); 
        destinationFile.getParentFile().mkdirs(); 
        files.transferTo(destinationFile); 
        
        Admin a = new Admin();
		a.setCode(Integer.parseInt(request.getParameter("code")));
        a.setId(request.getParameter("id"));
        a.setMaker(request.getParameter("maker"));
        a.setMaterial(request.getParameter("material"));
        a.setComment(request.getParameter("comment"));
        a.setImg("img2/" + destinationFileName);
		adservice.insert(a);
        
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('요청 처리 되었습니다.');history.go(-2);</script>");
        out.flush();
		return "redirect:main.food";
	}

	@GetMapping("/admindelete.food")
	public String delete(String num) {
		adservice.delete(num);
		return "redirect:admin.food";
	}
	
	@PostMapping("/adminupdate.food")
	public String update(Model model,Food f, String num,HttpServletResponse response) throws IOException {
		String[] allergy = {"대두","게","연어","닭고기","땅콩","새우","쑥","돼지고기","우유","참치","소고기","복숭아","민들레"};
		String tempmaterial = f.getMaterial();
		String tempmaker=f.getMaker();
		String tempimg=f.getImg();
		Food ff = fservice.selectOne(f.getCode());
		if(tempmaker.length() ==0){
			f.setMaker(ff.getMaker());
		}
		if(tempmaterial.length() ==0){
			f.setMaterial(ff.getMaterial());
		}
		if(tempimg.charAt(tempimg.length()-1)=='.'){
			f.setImg(ff.getImg());
		}
		String s ="";
		for(int i=0;i<allergy.length;i++) {
			if(tempmaterial.contains(allergy[i])) {
				s=s+allergy[i]+",";
			}
		}
		if(s.length()!=0&&s.charAt(s.length()-1)==',') {
			s=s.substring(0, s.length()-1);
			f.setAllergy(s);
		}
		fservice.update(f);
		adservice.delete(num);
		return "redirect:admin.food";
	}
	@PostMapping("/adminupdateimg.food")
	public String updateimg(Model model,Food f, HttpServletRequest request) throws IOException {
		return "redirect:read.food?code="+f.getCode();
	}
	@PostMapping("/fortuneinsert.food")
	public String insertfortune(String fortune) {
		adservice.insertFortune(fortune);
		return "redirect:admin.food";
	}
}
