package com.indieground.movie.movieReview.service;

import java.util.List;

import com.indieground.movie.movieReview.model.MovieReviewVO;

public interface IMovieReviewService {
	List<MovieReviewVO> getList();
	MovieReviewVO getItem(int sn);
	void insert(MovieReviewVO vo);
	void modify(MovieReviewVO vo);
	void delete(int sn);
}
