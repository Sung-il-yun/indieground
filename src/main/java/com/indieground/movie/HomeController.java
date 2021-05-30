package com.indieground.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.IMovieInfoService;
import com.indieground.movie.moviePreview.service.IMoviePreviewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private IMoviePreviewService prvService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("movieList", service.getList());
		model.addAttribute("previewList", prvService.getList());
		model.addAttribute("mainPage", "1");
		
		return "home";
	}
	
	//마이바티스 테스트를 위한 페이지로 이동
	@Autowired
	private IMovieInfoService service;
	
	@GetMapping(value="/test")
	public String test(Model model){
		model.addAttribute("test", service.test());
		List<MovieInfoVO> vo = service.test();
		
		for(int i = 0 ; i < vo.size(); i++ ){
		       System.out.println(vo.get(i).getMovienm());
		       System.out.println(vo.get(i).getMoviecode());

		}
		
		return "backendtest";
	}
	
	@GetMapping(value="/admin")
	public String admin(Model model){
		
		return "admin";
	}
}
