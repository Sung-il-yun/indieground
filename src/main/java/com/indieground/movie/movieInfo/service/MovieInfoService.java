package com.indieground.movie.movieInfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.repository.IMovieInfoMapper;

@Service
public class MovieInfoService implements IMovieInfoService {
	
	@Autowired
	private IMovieInfoMapper mapper;

	@Override
	public List<MovieInfoVO> test() {
		return mapper.test();
	}

	@Override
	public void insert(MovieInfoVO vo) {
		mapper.insert(vo);
	}

	@Override
	public List<MovieInfoVO> getList() {
		return mapper.getList();
	}

	@Override
	public MovieInfoVO getItem(String moviecode) {
		return mapper.getItem(moviecode);
	}

	@Override
	public void modify(MovieInfoVO vo) {
		mapper.modify(vo);
	}

	@Override
	public void delete(String moviecode) {
		mapper.delete(moviecode);
	}

}
