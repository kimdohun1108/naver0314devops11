package com.bitcamp.study;

import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import data.dto.ShopDto;

/**
 * Handles requests for the application home page.
 */
// 서블릿이랑 같음
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		ShopDto dto1 = new ShopDto();
		dto1.setSang("머리띠");
		dto1.setPhoto("30.jpg");
		dto1.setPrice(13000);
		dto1.setSu(3);
		
		ShopDto dto2 = new ShopDto("머리끈","26.jpg",9000,5);
		
		model.addAttribute("dto1", dto1);
		model.addAttribute("dto2", dto2);
		
		System.out.println(dto1.toString()); //@toString을 안하면 dto1.toString() 이렇게 써줘야하지만
		System.out.println(dto2); //@toString을 쓰면 toString생략가능
		
		model.addAttribute("msg", "Hello SpringFramework!!!");
		model.addAttribute("today", new Date());
		
		return "home"; //포워드
	}
	
}
