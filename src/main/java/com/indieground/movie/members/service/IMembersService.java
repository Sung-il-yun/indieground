package com.indieground.movie.members.service;

import com.indieground.movie.members.model.MembersVO;

public interface IMembersService {
	void register(MembersVO vo);
	int checkId(String id);
	MembersVO selectOne(String id);
}
