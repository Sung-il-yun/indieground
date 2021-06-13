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

import com.indieground.movie.actorInfo.service.IActorInfoService;
import com.indieground.movie.members.service.IMembersService;
import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.IMovieInfoService;
import com.indieground.movie.moviePreview.service.IMoviePreviewService;
import com.indieground.movie.movieReview.service.IMovieReviewService;
import com.indieground.movie.reply.service.IReplyService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private IMoviePreviewService prvService;
	
	@Autowired
	private IMembersService memService;
	
	@Autowired
	private IActorInfoService actService;
	
	@Autowired
	private IMovieReviewService rvService;
	
	@Autowired
	private IReplyService replyService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req, String carousel) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("movieList", service.test());
		model.addAttribute("previewList", prvService.getList());
		model.addAttribute("mainPage", "1");
		
		if(carousel == null)
			carousel = "genre";
		
		model.addAttribute("carousel", carousel);
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
		model.addAttribute("membersList", memService.getList());
		return "admin";
	}
	
	
	@GetMapping(value="/search")
	public String search(Model model, String keyword) {
		System.out.println(keyword);
		model.addAttribute("movieSearch", service.search(keyword));
		model.addAttribute("actSearch", actService.search(keyword));
		model.addAttribute("rvSearch", rvService.search(keyword));
		model.addAttribute("replySearch", replyService.search(keyword));
		return "search";
	}
}
