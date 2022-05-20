package com.remind.ej;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoryDAO{

	@Autowired
	SqlSessionTemplate mybatis;
	
	public int create(MemoryVO vo) {
		int result = mybatis.insert("Memory.create", vo);
		return result;
	}
	
	public MemoryVO read(MemoryVO vo) {
		MemoryVO memoryVO = mybatis.selectOne("Memory.read", vo);
		return memoryVO;
	}
	
	public int readUID(MemoryVO uID) {
		int result = mybatis.selectOne("Memory.readUID", uID);
		return result;
	}
}