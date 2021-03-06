package com.indieground.movie.movieInfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.indieground.movie.actorInfo.service.ActorInfoService;
import com.indieground.movie.commons.PageCreator;
import com.indieground.movie.commons.PageVO;
import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.MovieInfoService;
import com.indieground.movie.reply.service.ReplyService;

@Controller
public class MovieInfoController {
	
	@Autowired
	private MovieInfoService service;
	
	@Autowired
	private ActorInfoService actorservice;
	
	@Autowired
	private ReplyService replyservice;
	
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
	
	// pageVO 적용
	@GetMapping("/list")
	public String list(Model model, PageVO paging) {
		
		PageCreator pc = new PageCreator();
		pc.setPaging(paging);
		pc.setArticleTotalCount(service.countItems());
		
		model.addAttribute("movieList", service.getList(paging));
		model.addAttribute("pc", pc);
		return "/movie/list";
	}
	
	@GetMapping("/detail")
	public String detail(String moviecode, Model model) {
		model.addAttribute("movie", service.getItem(moviecode));
		model.addAttribute("actors", actorservice.getList());
		model.addAttribute("replies", replyservice.getList());
		System.out.println(moviecode);
		return "/movie/detail";
	}
	
	@GetMapping("/modify")
	public String modify(String moviecode, Model model) {
		model.addAttribute("movie", service.getItem(moviecode));
		System.out.println(moviecode);
		return "/movie/modify";
	}
	
	@PostMapping("/modify")
	public String modify(MovieInfoVO vo) {
		service.modify(vo);
		String code = vo.getMoviecode();
		System.out.println("코드: " + code);
		System.out.println(vo.getMovienmeng());
		return "redirect:/detail?moviecode=" + code;
	}
	
	@GetMapping("/delete")
	public String delete(String moviecode, RedirectAttributes ra) {
		service.delete(moviecode);
		ra.addFlashAttribute("msg", "uploadSuccess");
		return "redirect:/list";
	}
}
