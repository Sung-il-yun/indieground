package com.indieground.movie.moviePreview.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.indieground.movie.moviePreview.model.MoviePreviewVO;
import com.indieground.movie.moviePreview.repository.IMoviePreviewMapper;

@Service
public class MoviePreviewService implements IMoviePreviewService{

	@Autowired
	private IMoviePreviewMapper service;
	
	@Override
	public List<MoviePreviewVO> getList() {
		return service.getList();
	}

}
