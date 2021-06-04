package com.indieground.movie.members.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.indieground.movie.members.model.MembersVO;
import com.indieground.movie.members.service.IMembersService;

@Controller
public class MembersController {

	@Autowired
	IMembersService service;
	
	@PostMapping("/register")
	@ResponseBody
	public String register(@RequestBody MembersVO vo) {
		
		System.out.println(vo.getUserid());
		System.out.println(vo.getPwd());
		
		service.register(vo);
		return "joinSuccess";
	}
	
	
	@PostMapping("/checkId")
	@ResponseBody
	public String checkId(@RequestBody String account) {
	      System.out.println("/movie/checkId: POST 요청 발생!");
	      System.out.println("parameter: " + account);
	      int checkNum = service.checkId(account);
	      if(checkNum == 1) {
	         System.out.println("아이디가 중복됨!");
	         return "NO";
	      } else {
	         System.out.println("아이디 사용 가능!");
	         return "OK";
	      }
	      
	   }
	
	
	
	//로그인 요청 처리
	 	@PostMapping("/login")
	 	@ResponseBody
	 	public String loginCheck(@RequestBody MembersVO inputData
	 										/*HttpServletRequest request*/
	 										, HttpSession session) {
	 		
	 		/*
	 		 # 클라이언트가 전송한 id값과 pw값을 가지고 DB에서 회원의 정보를
	 		  조회해서 불러온 다음 값 비교를 통해
	 		  1. 아이디가 없는 경우 클라이언트 측으로 문자열 idFail 전송.
	 		  2. 비밀번호가 틀렸을 경우 문자열 pwFail전송.
	 		  3. 로그인 성공 시 문자열 loginSuccess 전송.
	 		 */
	 		
	 		//서버에서 세션 객체를 얻는 방법.
	 		//1. HttpServletRequest객체 사용.
	 		//HttpSession session = request.getSession();
	 		
	 		
	 		String result = null;
	 		
	 		System.out.println("login요청!: POST");
	 		System.out.println("param: " + inputData);
	 		
	 		MembersVO dbData = service.selectOne(inputData.getUserid());
	 		
	 		if(dbData != null) {
	 			if(dbData.getPwd().equals(inputData.getPwd())) {
	 				//세션 데이터 생성 (로그인 유지)
	 				session.setAttribute("login", dbData);
	 				result = "loginSuccess";
	 				// 어드민 설정 추가
	 				if(dbData.getUserpower().equals("1"))
	 					session.setAttribute("admin", "admin");
	 			} else {
	 				result = "pwFail";
	 			}
	 		} else {
	 			result = "idFail";
	 		}
	 		
	 		
	 		return result;
	 		
	 		
	 	}
	 	
	 	@GetMapping("/logout")
	 	@ResponseBody
	 	public ModelAndView logout(HttpSession session) {
	 		System.out.println("logout 요청");
	 		
	 		MembersVO vo = (MembersVO) session.getAttribute("login");
	 		// 세션 데이터를 검색하여 로그아웃 처리
	 		
	 		if(vo != null) {
	 			session.removeAttribute("login");
	 			session.removeAttribute("admin"); // 어드민 제거
	 		}
	 		
	 		//return "redirect:/"; REST 컨트롤러
	 		return new ModelAndView("redirect:/");
	 	}
}
