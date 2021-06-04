package com.indieground.movie.members.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.members.model.MembersVO;
import com.indieground.movie.members.repository.IMembersMapper;

@Service
public class MembersService implements IMembersService {

	@Autowired
	IMembersMapper mapper;
	
	@Override
	public void register(MembersVO vo) {
		mapper.register(vo);
	}

	@Override
	public int checkId(String id) {
		return mapper.checkId(id);
	}

	@Override
	public MembersVO selectOne(String id) {
		return mapper.selectOne(id);
	}

}
