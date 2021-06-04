package com.indieground.movie.movieReview.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.movieReview.model.MovieReviewVO;
import com.indieground.movie.movieReview.repository.IMovieReviewMapper;

@Service
public class MovieReviewService implements IMovieReviewService {

	@Autowired
	private IMovieReviewMapper mapper;
	
	@Override
	public List<MovieReviewVO> getList() {
		return mapper.getList();
	}

	@Override
	public MovieReviewVO getItem(int sn) {
		return mapper.getItem(sn);
	}

	@Override
	public void insert(MovieReviewVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void modify(MovieReviewVO vo) {
		mapper.modify(vo);
		
	}

	@Override
	public void delete(int sn) {
		mapper.delete(sn);
	}

}
