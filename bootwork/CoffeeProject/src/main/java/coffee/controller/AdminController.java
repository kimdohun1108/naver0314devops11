package coffee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import coffee.dto.MemberDto;
import coffee.service.MemberService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AdminController {
	@Autowired
	private MemberService memberServie;
	
	@GetMapping("/coffee/allmember")
	public String allmember(Model model)
	{
		int totalCount = memberServie.gettotalcount();
		List<MemberDto> list = memberServie.getallmember();
		model.addAttribute("list",list);
		model.addAttribute("totalCount",totalCount);
		
		return "admin/allmember";
	}
	
}
