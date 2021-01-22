package com.myfacebook.facebook.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfacebook.facebook.model.LoginDTO;
import com.myfacebook.facebook.model.RequestDTO;

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
	public List<RequestDTO> getFriend_request(int unum){
		return sqlSession.selectList("getFriend_request",unum);
	}
}
