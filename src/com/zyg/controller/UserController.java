package com.zyg.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.glassfish.gmbal.ParameterNames;
import com.zyg.pojo.User;

@Controller
@RequestMapping("user")//路劲窄化
public class UserController {
	
	       
	@RequestMapping("/login.action")
	public String login(Model model,User user){
		System.out.println(user);
		//request.setAttribute("user", user);
		model.addAttribute("user", user);	//model	
		return "show"; //view 
	}
	
	@RequestMapping("/regist.action")
	public String register(String username,String pas,HttpServletRequest request){
		System.out.println(username+pas);
		return null;
	}
	
	
}
