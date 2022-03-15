package com.remind.ej;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Autowired
	UserDAO dao;
	
	public int create(UserVO vo) {
		return dao.create(vo);
	}
	
	public UserVO read(UserVO vo) {
		return dao.read(vo);
	}
	
}