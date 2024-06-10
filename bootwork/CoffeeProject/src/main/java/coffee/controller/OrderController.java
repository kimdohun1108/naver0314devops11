package coffee.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import coffee.dto.DrinkDto;
import coffee.dto.OrderDto;
import coffee.service.DrinkService;
import coffee.service.MemberService;
import coffee.service.OrderService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OrderController {
	@Autowired
	MemberService memberService;
	@Autowired
	DrinkService drinkService;
	
	
	
	
	 
	
}
