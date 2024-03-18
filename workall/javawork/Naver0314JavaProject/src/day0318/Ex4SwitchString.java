package day0318;

import java.util.Scanner;

public class Ex4SwitchString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String color;
		System.out.println("영문으로 색상 입력");
		color = sc.nextLine();
		switch(color)
		{
		case "red","RED","Red":
			System.out.println("빨강색");
			break;
		case "green","GREEN","Green":
			System.out.println("초록색");
			break;
		case "pink","PINK","Pink":
			System.out.println("분홍색");
			break;
		default:
			System.out.println("이외의 색");
		}
	}

}
