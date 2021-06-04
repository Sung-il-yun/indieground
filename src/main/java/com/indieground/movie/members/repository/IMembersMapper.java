package com.indieground.movie.members.repository;

import com.indieground.movie.members.model.MembersVO;

public interface IMembersMapper {
	void register(MembersVO vo);
	int checkId(String id);
	MembersVO selectOne(String id);
}
