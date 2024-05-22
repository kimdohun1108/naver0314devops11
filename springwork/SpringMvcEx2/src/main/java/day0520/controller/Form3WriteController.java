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
			//���±׿��� ���� �̟����� �ڵ����� �о��
			//Model�� foodDto��� �̸����� ����ȴ�
			//@ModelAttribute FoodDto dto 
			
			//dtoŬ�������� �ʹ� ���� �����ϰ� �𵨿� ����
			@ModelAttribute("fdto") FoodDto dto 
			
			//@ModelAttribute ��������
			//FoodDto dto
			)
	{
		return "form3/result3";
	}
}
