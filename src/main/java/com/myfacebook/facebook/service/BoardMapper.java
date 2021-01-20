package com.myfacebook.facebook.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.myfacebook.facebook.model.BoardDTO;

public class BoardMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public int boardWrite(BoardDTO dto) {
		return sqlSession.insert("boardWirte",dto);
	}
}
