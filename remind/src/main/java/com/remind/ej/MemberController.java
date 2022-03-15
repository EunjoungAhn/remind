package com.remind.ej;

import java.util.logging.Logger;

import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	private final static Logger log = Logger.getGlobal();
	
	@Autowired
	UserService service;

	@RequestMapping("user/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("user/create")
	public String create(UserVO vo) {
		log.info("로그: 회원가입 로직 들어옴!! 이유:"+ vo);
		
		int result = service.create(vo);
		
		 if (result == 1) { 
			 return "user/registerSuccess"; 
		 } else { 
			 return "user/registerFail"; 
		 }
		 
	}

}