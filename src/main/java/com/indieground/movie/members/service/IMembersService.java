package com.indieground.movie.members.service;

import java.util.List;

import com.indieground.movie.members.model.MembersVO;

public interface IMembersService {
	void register(MembersVO vo);
	int checkId(String id);
	MembersVO selectOne(String id);
	
	List<MembersVO> getList();
	void modify(MembersVO vo);
}
