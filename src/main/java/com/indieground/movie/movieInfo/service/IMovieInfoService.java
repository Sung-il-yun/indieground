package com.indieground.movie.movieInfo.service;

import java.util.List;

import com.indieground.movie.movieInfo.model.MovieInfoVO;

public interface IMovieInfoService {
	
	//테스트 메서드
	List<MovieInfoVO> test();
	
	List<MovieInfoVO> getList();
	MovieInfoVO getItem(String moviecode);
	void insert(MovieInfoVO vo);
	void modify(MovieInfoVO vo);
	
	void delete(String moviecode);
}
