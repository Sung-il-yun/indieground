package com.indieground.movie.actorInfo.repository;

import java.util.List;

import com.indieground.movie.actorInfo.model.ActorInfoVO;

public interface IActorInfoMapper {
	void insert(ActorInfoVO vo);
	List<ActorInfoVO> getList();
	List<ActorInfoVO> search(String keyword);
}
