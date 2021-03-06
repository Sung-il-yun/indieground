package com.indieground.movie.reply.repository;

import java.util.List;

import com.indieground.movie.reply.model.ReplyVO;

public interface IReplyMapper {

	List<ReplyVO> search(String keyword);
	List<ReplyVO> getList();
	void insert(ReplyVO vo);
	void delete(int sn);
}
