package com.myfacebook.facebook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myfacebook.facebook.service.BoardMapper;

@Controller
public class BoardController {
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("board_write.do")
	public String home() {
		return "board_write";
	}
}
