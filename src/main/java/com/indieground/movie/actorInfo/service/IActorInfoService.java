package com.indieground.movie.actorInfo.service;

import java.util.List;

import com.indieground.movie.actorInfo.model.ActorInfoVO;

public interface IActorInfoService {
	void insert(ActorInfoVO vo);
	
	List<ActorInfoVO> getList();
	List<ActorInfoVO> search(String keyword);
}
