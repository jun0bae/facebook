package com.myfacebook.facebook.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfacebook.facebook.model.BoardDTO;
import com.myfacebook.facebook.model.FriendDTO;
import com.myfacebook.facebook.model.LoginDTO;

@Service
public class BoardMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public int boardWrite(BoardDTO dto) {
		return sqlSession.insert("boardWirte",dto);
	}
	public List<LoginDTO> friendFind(String search){
		return sqlSession.selectList("friendFind",search);
	}
	public LoginDTO getMemberProfile(int unum) {
		return sqlSession.selectOne("getMemberProfile",unum);
	}
	public List<FriendDTO> getFriend_list(int unum){
		return sqlSession.selectList("getFriend_list",unum);
	}
}
