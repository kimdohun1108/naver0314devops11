package day0520.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import day0520.dto.FoodDto;

@Controller
public class Form3WriteController {
	@PostMapping("/read3")
	public String read3(
			//폼태그에서 같은 이읆으로 자동으로 읽어옴
			//Model에 foodDto라는 이름으로 저장된다
			//@ModelAttribute FoodDto dto 
			
			//dto클래스명이 너무 길경우 간단하게 모델에 저장
			@ModelAttribute("fdto") FoodDto dto 
			
			//@ModelAttribute 생략가능
			//FoodDto dto
			)
	{
		return "form3/result3";
	}
}
