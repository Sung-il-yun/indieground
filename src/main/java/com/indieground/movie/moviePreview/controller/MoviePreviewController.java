package com.indieground.movie.moviePreview.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.indieground.movie.moviePreview.model.MoviePreviewVO;
import com.indieground.movie.moviePreview.service.IMoviePreviewService;

@Controller
public class MoviePreviewController {

	//페이징 안함.
	
	@Autowired
	private IMoviePreviewService service;
	
	@GetMapping("preview")
	public String moviePreview(Model model) {
		return "moviePreview";
	}
	
	@PostMapping("preview")
	public String moviePreview(MoviePreviewVO vo) {
		return "redirect:/moviePreview";
	}
	
}
