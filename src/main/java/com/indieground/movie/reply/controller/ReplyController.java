package com.indieground.movie.reply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.indieground.movie.reply.model.ReplyVO;
import com.indieground.movie.reply.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService service;
	
	@PostMapping(value="/reply/insert", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<ReplyVO> insert(@RequestBody ReplyVO vo) {
		System.out.println("test12212");
		System.out.println(vo.getReply());
		System.out.println(vo.getUserid());
		System.out.println(vo.getMoviecode());
		System.out.println(vo.getScore());
		service.insert(vo);
		return service.getList();
	}

	@PostMapping("/reply/delete")
	@ResponseBody
	public List<ReplyVO> delete(@RequestBody int sn) {
		service.delete(sn);
		return service.getList();
	}
	
}
