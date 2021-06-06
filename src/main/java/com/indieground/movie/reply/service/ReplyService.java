package com.indieground.movie.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.reply.model.ReplyVO;
import com.indieground.movie.reply.repository.IReplyMapper;

@Service
public class ReplyService implements IReplyService {

	@Autowired
	IReplyMapper mapper;
	
	@Override
	public List<ReplyVO> search(String keyword) {
		return mapper.search(keyword);
	}

	@Override
	public List<ReplyVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public void insert(ReplyVO vo) {
		mapper.insert(vo);
		
	}

	@Override
	public void delete(int sn) {
		mapper.delete(sn);
	}

}
