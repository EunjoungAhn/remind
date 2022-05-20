package com.remind.ej;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemoryService {
	
	@Autowired
	MemoryDAO dao;
	
	public int create(MemoryVO vo) {
		return dao.create(vo);
	}
	
	public MemoryVO read(MemoryVO vo) {
		return dao.read(vo);
	}
	
}