package com.myfacebook.facebook;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myfacebook.facebook.model.BoardDTO;
import com.myfacebook.facebook.model.FriendDTO;
import com.myfacebook.facebook.model.LoginDTO;
import com.myfacebook.facebook.service.BoardMapper;

@Controller
public class BoardController {
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("board_write.do")
	public String home(@ModelAttribute BoardDTO dto) {
		int res = boardMapper.boardWrite(dto);
		return "board_write";
	}
	@RequestMapping("friend_list.do")
	public String friedList(HttpServletRequest req){
		int unum = Integer.parseInt(req.getParameter("unum"));
		List<FriendDTO> friend_list = boardMapper.getFriend_list(unum);
		req.setAttribute("friend_list", friend_list);
		return "board/friend_list";
	}
	@RequestMapping("search_friend.do")
	public String friendFind(HttpServletRequest req) {
		String search = req.getParameter("search");
		List<LoginDTO> searchList = boardMapper.friendFind(search);
		req.setAttribute("searchList", searchList);
		return "board/search_friend";
	}
	@RequestMapping("profile.do")
	public String profile(HttpServletRequest req) {
		int unum = Integer.parseInt(req.getParameter("unum"));
		LoginDTO getMember = boardMapper.getMemberProfile(unum);
		List<LoginDTO> searchList = boardMapper.friendFind(req.getParameter("search"));
		req.setAttribute("searchList", searchList);
		req.setAttribute("getMemberProfile", getMember);
		return "board/search_friend";
	}
}
