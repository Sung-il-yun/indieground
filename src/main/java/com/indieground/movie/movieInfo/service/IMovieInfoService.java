package com.indieground.movie.movieInfo.service;

import java.util.List;

import com.indieground.movie.movieInfo.model.MovieInfoVO;

public interface IMovieInfoService {
	
	//테스트 메서드
	List<MovieInfoVO> test();
	void insert(MovieInfoVO vo);
}
