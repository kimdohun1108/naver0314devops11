package member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import member.dto.MemberDto;
import member.service.MemberService;

@Controller
@RequestMapping("/member") //�������
public class MemberUpdateController {
	@Autowired
	private MemberService memberService;
	
	//������ - �̸�,�ڵ���,�̸���,�ּ�,������� �� ���� ��Ÿ������
	@GetMapping("/updateform")
	public String update(@RequestParam int num,Model model)
	{
		MemberDto dto = memberService.getDate(num);
		model.addAttribute("dto",dto);
		
		return "member/updateform";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute MemberDto dto)
	{
		memberService.updateMember(dto);
		
		return "redirect:./detail?num="+dto.getNum();
	}
	
	//{"status":"success" or "fail"}
	@ResponseBody
	@GetMapping("/delete")
	public Map<String, String> delete(@RequestParam int num,@RequestParam String passwd)
	{
		Map<String, String> map = new HashMap<>();
		//����� ������� ������ ����
		boolean b = memberService.isEqualPassCheck(num, passwd);
		if(b)
		{
			memberService.deleteMember(num);
		}
		map.put("status", b?"success":"fail");
		return map;
	}
}
