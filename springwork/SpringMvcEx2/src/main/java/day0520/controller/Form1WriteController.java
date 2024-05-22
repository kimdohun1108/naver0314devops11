package day0520.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Form1WriteController {
	@GetMapping("/read1")
	public String read1(
			//form태그 name : @RequestParam("") 
			//@RequestParam도 생략 가능 (권장X)
			@RequestParam String name,
			//폼태그와 이름이 다를경우 생략 불가능
			@RequestParam("addr") String a,
			@RequestParam("age") int myage,
			Model model
			)
	{
		model.addAttribute("name",name);
		model.addAttribute("addr",a);
		model.addAttribute("age",myage);
		model.addAttribute("info",myage>=20?"성인입니다":"미성년자입니다");
		return "form1/result1";
	}
}
