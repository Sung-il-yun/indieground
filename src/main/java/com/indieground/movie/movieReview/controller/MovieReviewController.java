package com.indieground.movie.movieReview.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.MovieInfoService;
import com.indieground.movie.movieReview.model.MovieReviewVO;
import com.indieground.movie.movieReview.service.MovieReviewService;

@Controller
public class MovieReviewController {

	@Autowired
	private MovieReviewService service;
	
	@Autowired
	private MovieInfoService movieservice;
	//페이징 안함.
	
	@GetMapping("review")
	public String movieReview(Model model) {
		model.addAttribute("reviewList", service.getList());
		model.addAttribute("movielist", movieservice.getList());
		return "/review/list";
	}
	
	@GetMapping("/review/detail")
	public String reviewDetail(Model model, int sn) {
		model.addAttribute("review", service.getItem(sn));
		model.addAttribute("photo", movieservice.getItem(service.getItem(sn).getMoviecode()).getMovieposter());
		return "/review/detail";
	}
	
	@GetMapping("/review/insert")
	public String insert(Model model) {
		return "/review/write";
	}
	
	@PostMapping("/review/insert")
	public String insert(MovieReviewVO vo, RedirectAttributes ra) {
		service.insert(vo);
		ra.addFlashAttribute("msg", "uploadSuccess");
		return "redirect:/review/insert";
	}
	
	@GetMapping("/review/modify")
	public String modify(int sn, Model model) {
		model.addAttribute("review", service.getItem(sn));
		System.out.println(sn);
		return "/review/modify";
	}
	
	@PostMapping("/review/modify")
	public String modify(MovieReviewVO vo) {
		service.modify(vo);
		return "redirect:/review/detail?sn=" + vo.getSn();
	}
	
	@GetMapping("/review/delete")
	public String delete(int sn, RedirectAttributes ra) {
		service.delete(sn);
		ra.addFlashAttribute("msg", "uploadSuccess");
		return "redirect:/review";
	}
	
	
}
