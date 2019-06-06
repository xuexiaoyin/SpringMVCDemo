package com.zyg.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zyg.pojo.Student;
import com.zyg.pojo.User;
import com.zyg.pojo.UserVO;

@Controller
public class StudentController {
	
	@RequestMapping("tofindStu.action")
	public String findStu(Student student){
		System.out.println(student);
		return "show";
	}
	
	@RequestMapping("del.action")
	public String del(String[] ids,HttpServletRequest request) {
		/*String[] values = request.getParameterValues("ids");*/
		for (String string : ids) {
			System.out.println(string);
		}
		return "success";   
	}
	
	@RequestMapping("insert.action")
	public String del(UserVO userVO) {
		System.out.println(userVO);
		return "success";   
	}
}
