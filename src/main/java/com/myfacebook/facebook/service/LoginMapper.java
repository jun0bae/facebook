package com.myfacebook.facebook.service;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfacebook.facebook.model.LoginDTO;

@Service
public class LoginMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public int memberInput(LoginDTO dto) {
		return sqlSession.insert("memberInput",dto);
	}
	public LoginDTO getMember(LoginDTO dto) {
		return sqlSession.selectOne("getMember",dto);
	}
}
