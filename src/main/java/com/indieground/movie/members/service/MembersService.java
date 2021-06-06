package com.indieground.movie.members.service;

import java.util.List;

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

	@Override
	public List<MembersVO> getList() {
		return mapper.getList();
	}

	//관리자측에서 댓글차단, 회원차단여부를 변경하기 위한 코드
	@Override
	public void modify(MembersVO vo) {
		//최말단에서 온 오프 해석

		System.out.println(vo.getUserid());
		System.out.println(vo.getUserblock());
		System.out.println(vo.getReplyblock());
		
		
		if(vo.getUserblock() == null)
			vo.setUserblock("0");
		if(vo.getUserblock().equals("on"))
			vo.setUserblock("1");
		
		if(vo.getReplyblock() == null)
			vo.setReplyblock("0");
		if(vo.getReplyblock().equals("on"))
			vo.setReplyblock("1");
		
		
		System.out.println("수정후");
		System.out.println(vo.getUserid());
		System.out.println(vo.getUserblock());
		System.out.println(vo.getReplyblock());
		
		
		mapper.modify(vo);
	}

}
