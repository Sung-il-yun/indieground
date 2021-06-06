package com.indieground.movie.reply.service;

import java.util.List;

import com.indieground.movie.reply.model.ReplyVO;

public interface IReplyService {

	List<ReplyVO> search(String keyword);
	List<ReplyVO> getList();
	
	void insert(ReplyVO vo);
	void delete(int sn);
}
