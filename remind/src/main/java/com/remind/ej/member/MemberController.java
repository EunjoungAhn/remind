package com.remind.ej.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	UserService service;

	@RequestMapping("user/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("user/create")
	public String create(UserVO vo) {
		
		int result = service.create(vo);
		
		 if (result == 1) { 
			 return "user/registerSuccess"; 
		 } else { 
			 return "user/registerFail"; 
		 }
		 
	}

}