package day0318;

import java.util.Scanner;

public class Ex4SwitchString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		String color;
		System.out.println("영문으로 색상입력하기");
		color=sc.nextLine();
		//switch 에서 문자열도 가능(JDk8부터)

		switch(color)
		{
		//break 가 없으면 그다음 case 가 실행
		case "RED":
		case "Red":
		case "red":
			System.out.println("빨강색");
			break;
		case "GREEN":
		case "green":
			System.out.println("초록색");
			break;
		case "PINK":
		case "pink":
			System.out.println("분홍색");
			break;
		default:
			System.out.println("빨강,초록,분홍 이외의 색!");
		}
	}

}
