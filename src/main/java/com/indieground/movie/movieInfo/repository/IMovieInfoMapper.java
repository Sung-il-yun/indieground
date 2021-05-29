package com.indieground.movie.movieInfo.repository;

import java.util.List;

import com.indieground.movie.movieInfo.model.MovieInfoVO;


public interface IMovieInfoMapper {
	
	//영화정보 전체조회 (테스트)
	List<MovieInfoVO> test();

	void insert(MovieInfoVO vo);

}
