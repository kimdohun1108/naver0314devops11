package day0320;

import java.util.Date;
import java.util.Scanner;

public class Ex4MyCalenber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//내가 입력한 년 월 캘린더 만들기
		Scanner sc = new Scanner(System.in);
		int year, month, week, endday;
		System.out.println("달력을 조회할 년도와 월을 입력하세요");
		year = sc.nextInt();
		month =sc.nextInt();
		//1~12월이 아닐경우 종료
		if(month<1 || month>12)
		{
			System.out.println("잘못된 숫자입니다");
			return;
		}
		
		System.out.printf("%20d 년 %d 월 달력\n\n",year,month);
		System.out.println("=".repeat(50));
		System.out.println("일\t월\t화\t수\t목\t금\t토");
		System.out.println("=".repeat(50));
		
		//1. 내가 입력한 년도 -월의 1일이 무슨요일인가?
		Date date = new Date(year-1900,month-1,1);
		week = date.getDay();//0:일,......6:토
		System.out.println(week); //(확인용)
		
		//2. 내가 입력한 년도 -월이 몇일까지 있는가?
		switch(month)
		{
		case 2:
			endday = year%4==0 && year%100!=0 || year%200==0?29:28;
			break;
		case 4, 6, 9, 11:
			endday = 30;
			break;
		default:
			endday = 31;
		}
		
		//week(요일수) 만큼 탭으로 뛰우기
		for(int i=1;i<=week;i++)
		{
			System.out.print("\t");
		}
		
		//1일부터 endday까지 출력
		//조건 : 토요일은 출력후 \n
		for(int i=1;i<=endday;i++)
		{
			System.out.printf("%2d\t",i);
			++week;//토요일이되면 7의배수가 됨
			if(week%7==0)
			{
				System.out.println("\n");
			}
		}
	}

}
