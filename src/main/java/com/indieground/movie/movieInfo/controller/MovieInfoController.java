package com.indieground.movie.movieInfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.MovieInfoService;

@Controller
public class MovieInfoController {
	
	@Autowired
	private MovieInfoService service;
	
	@GetMapping("/insert")
	public String insert(Model model) {
		return "/movie/write";
	}
	
	@PostMapping("/insert")
	public String insert(MovieInfoVO vo, RedirectAttributes ra) {
		service.insert(vo);
		ra.addFlashAttribute("msg", "uploadSuccess");
		return "redirect:/insert";
	}
}
