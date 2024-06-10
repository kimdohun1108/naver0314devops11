package coffee.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import coffee.dto.DrinkDto;
import coffee.dto.MemberDto;
import coffee.service.DrinkService;
import coffee.service.MemberService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private DrinkService drinkService;

	//로그아웃시 호출
	@ResponseBody
	@GetMapping("/coffee/logout")
	public void memberLogout(HttpSession session) {
		session.removeAttribute("loginok");
	}

	//회원가입 호출
	@GetMapping("/coffee/form")
	public String form() 
	{
		return "member/memberform";
	}

	//로그인 호출
	@GetMapping("/coffee/login")
	public String login() 
	{
		return "member/memberlogin";
	}
	
	//회원가입 insert
	@PostMapping("/coffee/insert")
	public String insert(
			@ModelAttribute MemberDto dto,
			HttpServletRequest request
			) 
	{
		memberService.insertMember(dto);
		//redirect로 가야하는지(
		return "member/memberlogin";
	}
	
	//아이디 중복확인
	@ResponseBody
	@GetMapping("/coffee/idcheck")
	public Map<String, Integer> idcheck(@RequestParam String searchid) 
	{
		Map<String, Integer> map = new HashMap<>();
		int count = memberService.getidcheckcount(searchid);
		map.put("count", count);
		
		return map;
	}
	
	//닉네임 중복확인
	@ResponseBody
	@GetMapping("/coffee/nickcheck")
	public Map<String, Integer> nickcheck(@RequestParam String searchnick)
	{
		Map<String, Integer> map = new HashMap<>();
		int count = memberService.getnickcheckcount(searchnick);
		map.put("count", count);
		
		return map;
	}
	
	//로그인 이벤트
	
	  @GetMapping("/coffee/loginon") 
	  public String loginon(
			  						@RequestParam String id,
			  						@RequestParam String passwd, 
			  						HttpSession session,
			  						Model model 
			  						) 
	  { 
		  //로그인 상태
		  boolean loginStatus = memberService.logincheck(id,passwd); 
		  String move;
		  System.out.println(loginStatus);
	  
		  if(loginStatus)
		  {
			  //아이디와 비번이 맞는 경우
			  move = "redirect:/";
			  model.addAttribute("status", "success"); 
			  session.setAttribute("loginok","yes");
			  session.setAttribute("loginid", id);
		  }
		  else 
		  { 
			  //아이디와 비번이 틀린 경우
			  move="member/memberlogin"; 
			  model.addAttribute("status", "fail");
		  }
	  
	  return move; 
	  }
	 
	
	//mypage 호출
	@GetMapping("/coffee/detail")
	public String detail() 
	{
		return "member/memberdetail";
	}
	
	//mypage->정보수정
	@GetMapping("/coffee/update")
	public String update(Model model,HttpSession session)
	{
		List<MemberDto> list = memberService.getdatabyid((String)session.getAttribute("loginid"));
		model.addAttribute("list",list);
		
		return "id/idupdate";
	}
	
	@GetMapping("/coffee/updateinsert")
	public String updateinsert(@ModelAttribute MemberDto dto)
	{
		memberService.updatemember(dto);
		
		return "member/memberdetail";
	}
	
	@ResponseBody
	@GetMapping("/coffee/delete")	
	public String delete(HttpSession session) 
	{
		String id = (String)session.getAttribute("loginid");
		memberService.deletemember(id);
		
		return "/";
	}
	
	//order 호출
	@GetMapping("/coffee/order")
	public String order(Model model) 
	{
		List<DrinkDto> dlist = drinkService.dlist();
		model.addAttribute("dlist",dlist);
		
		return "member/memberorder";
	}
	
	//menu 호출
	@GetMapping("/coffee/menu")
	public String menu(Model model)
	{
		List<DrinkDto> dlist = drinkService.dlist();
		model.addAttribute("dlist",dlist);
		
		return "member/membermenu";
	}
	
	
	
}
