package com.indieground.movie.actorInfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.indieground.movie.actorInfo.model.ActorInfoVO;
import com.indieground.movie.actorInfo.service.IActorInfoService;

@Controller
public class ActorInfoController {

	@Autowired
	IActorInfoService service;
	
	@GetMapping("/actorInsert")
	public String actorInsert(Model model) {
		return "/actorInsert";
	}
	@PostMapping("/actorInsert")
	public String actorInsert(ActorInfoVO vo, RedirectAttributes ra) {
		service.insert(vo);
		ra.addFlashAttribute("msg", "uploadSuccess");
		return "redirect:/actorInsert";
	}
}
