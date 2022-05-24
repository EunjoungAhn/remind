package com.remind.ej;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO{

	@Autowired
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int create(UserVO vo) {
		int result = sqlSession.insert("user.create", vo);
		return result;
	}
	
	public UserVO read(UserVO vo) {
		UserVO userVO = sqlSession.selectOne("user.read", vo);
		return userVO;
	}
	
	public int readUID(String uID) {
		int result = sqlSession.selectOne("user.readUID", uID);
		return result;
	}
}