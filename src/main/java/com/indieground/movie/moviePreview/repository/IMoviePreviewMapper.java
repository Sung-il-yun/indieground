package com.indieground.movie.moviePreview.repository;

import java.util.List;

import com.indieground.movie.moviePreview.model.MoviePreviewVO;

public interface IMoviePreviewMapper {

	List<MoviePreviewVO> getList();
}
