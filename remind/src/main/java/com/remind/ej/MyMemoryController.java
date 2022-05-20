package com.remind.ej;

import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyMemoryController {
	
	@Autowired
	MemoryService service;
	
	@Autowired
	HttpServletRequest request;

	@RequestMapping("user/myMemoryEdit")
	public String myMemoryEdit(HttpServletRequest request) {
		
		String question1 = request.getParameter("question1");
		
		HashMap map = new HashMap();
		map.put("question1", question1);
		
		
		
		
		return "myMemoryEdit";
	}
	
	/*
	@RequestMapping("user/create")
	public String create(UserVO vo) {
		
		int result = service.create(vo);
		
		 if (result == 1) { 
			 return "user/registerSuccess"; 
		 } else { 
			 return "user/registerFail"; 
		 }
		 
	}
	*/
}