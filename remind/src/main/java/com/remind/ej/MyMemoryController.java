package com.remind.ej;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyMemoryController {
	static ArrayList<MemoryVO> list = null;//모든 문제 값을 담는 세션의 list
	
	@Autowired
	MemoryService service;
	
	@Autowired
	HttpServletRequest request;	

	// 카드 추가/삭제 진입
	@RequestMapping(value="/user/myMemoryEdit")
	public String myMemoryEdit() {		
		return "myMemoryEdit";
	}
	
	// 카드 저장 ajax
	@RequestMapping(value="/user/myMemorySave", method=RequestMethod.POST)
	@ResponseBody
	public int myMemorySave(MemoryVO memoryVO, HttpServletRequest request) throws Exception{
		System.out.println("Edit 들어옴!");
		
		int result = 0; // default 싦패
		
		MemoryVO setVo = memoryVO;
		Map map = new HashMap();
		map.put("word", request.getParameter("word"));
		map.put("mean", request.getParameter("mean"));
		result = service.create(map);
		
		return result;
	}
	
	
	/*
	@RequestMapping(value="user/myMemoryEdit", method=RequestMethod.POST)
	@ResponseBody
	public String myMemoryEdit(MemoryVO memoryVO, HttpServletRequest request, HttpSession session) throws Exception{
		System.out.println("Edit 들어옴!");
		
		System.out.println(request.getParameter("data"));
		
		//ystem.out.println(session.getAttribute("word"));		
		//System.out.println(session.getAttribute("mean"));
		return "myMemoryEdit";
	}
	*/
	@RequestMapping("user/addMemorySuccess")
	public String addMemorySuccess() {
		return "addMemorySuccess";
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