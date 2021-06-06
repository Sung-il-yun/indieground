package com.indieground.movie.actorInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.actorInfo.model.ActorInfoVO;
import com.indieground.movie.actorInfo.repository.IActorInfoMapper;

@Service
public class ActorInfoService implements IActorInfoService {

	@Autowired
	IActorInfoMapper mapper;
	
	@Override
	public void insert(ActorInfoVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<ActorInfoVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public List<ActorInfoVO> search(String keyword) {
		return mapper.search(keyword);
	}

}
