package day0318;

import java.util.Scanner;

public class EX5Switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int year, month, days;
		boolean flag;
		System.out.println("연도를 입력하세요.");
		year = sc.nextInt();
		if(year%4==0 && year%100!=0 || year%400==0)
		{
			flag = true;
			System.out.println(year+"년은 윤년입니다.");
		}
		else
		{
			flag = false;
			System.out.println(year+"년은 평년입니다.");
		}
		
		System.out.println("월을 입력하세요.");
		month = sc.nextInt();
		if(month<1 || month>12)
		{
			System.out.println("잘못 입력했어요!");
			return;
		}
		
//		switch(month)
//		{
//		case 2:
//			days=flag?29:28;
//			break;
//		case 4,6,9,11:
//			days=30;
//			break;
//		default:
//			days=31;
//		}
		
		if(month==2)
		{
			days=flag?29:28;
		}
		else if(month==4 || month==6 || month==9 || month==11)
		{
			days=30;
		}
		else
		{
			days=31;
		}
		
		System.out.println(year+"년 "+month+"월 "+days+"일까지 있습니다.");
	}

}
