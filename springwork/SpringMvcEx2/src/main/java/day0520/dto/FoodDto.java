package day0520.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class FoodDto {
	private String foodname;//폼태그의 변수명이 같아야함
	private String foodphoto;
	private int price;
	private int cnt;
}
