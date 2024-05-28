package controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import data.dto.MemberDto;
import data.dto.ReBoardDto;
import data.service.MemberService;
import data.service.ReBoardService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/board")
public class BoardDatailDeleteController {
	@Autowired
	private ReBoardService boardService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/detail")
	public String detail(
			@RequestParam int num,
			@RequestParam int currentPage,
			Model model
			) 
	{
		//조회수 증가
		boardService.updateReadcount(num);
		//num에 해당하는 글 가져오기
		ReBoardDto dto = boardService.getData(num);
		//해당 아이디가 갖고 있는 프로필 사진 가져오기 
		String profile_photo = memberService.getData2(dto.getMyid()).getPhoto();
		
		model.addAttribute("profile_photo",profile_photo);
		model.addAttribute("dto",dto);
		model.addAttribute("currentPage",currentPage);
		
		return "board/detailPage";
	}
	
	@GetMapping("/delete")	
	public String delete(
			@RequestParam int num,
			@RequestParam int currentPage
			) 
	{
		boardService.deleteboard(num);
		
		return "redirect:./list?currntPage="+currentPage;
	}
	
}
