package com.remind.ej;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyMemoryController {
	
	@Autowired
	UserService service;

	@RequestMapping("user/myMemoryEdit")
	public String myMemoryEdit() {
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