package com.indieground.movie.movieReview.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.indieground.movie.movieReview.model.MovieReviewVO;

@Controller
public class MovieReviewController {

	//페이징 안함.
	
	@GetMapping("review")
	public String moviePreview(Model model) {
		return "/review/list";
	}
	
	@PostMapping("review")
	public String moviePreview(MovieReviewVO vo) {
		return "redirect:/review/detail";
	}
	
}
