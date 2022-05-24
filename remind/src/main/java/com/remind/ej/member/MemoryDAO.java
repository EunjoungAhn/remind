package com.remind.ej.member;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoryDAO{

	@Autowired
	private SqlSession sqlSession;
	
	public int create(ArrayList list) {
		int result = 0;
		result = sqlSession.insert("memory.create", list);
		return result;
	}
	
//	public MemoryVO read(MemoryVO vo) {
//		MemoryVO memoryVO = mybatis.selectOne("Memory.read", vo);
//		return memoryVO;
//	}
//	
//	public int readUID(MemoryVO uID) {
//		int result = mybatis.selectOne("Memory.readUID", uID);
//		return result;
//	}

}