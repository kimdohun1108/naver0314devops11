package day0318;

import java.util.Scanner;

public class Ex1Munje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 *  점수(score)를 입력후 점수가
		 *  90 이상이면 "A"
		 *  80 이상이면 "B
		 *  70 이상이면 "C"
		 *  60 이상이면 "D"
		 *  나머지는 "F" 를 출력
		 *  (조건연산자를 이용해서 구하기)
		 *  
		 *  (예)
		 *  점수?
		 *  89
		 *  
		 *  89점은 B학점입니다
		 * 
		 */
		Scanner sc=new Scanner(System.in);
		int score;
		char grade;
		System.out.println("점수 입력");
		score=sc.nextInt();
		//if문을 이용해서 점수를 잘못입력했을경우 메서드 종료를 하자
		if(score<1 || score>100)
		{
			System.out.println("잘못된 점수입니다");
			return; //main 메서드를 종료(곧 프로그램이 종료됨)
		}
		grade=score>=90?'A':score>=80?'B':score>=70?'C':score>=60?'D':'F';

		System.out.println(score+"점=>"+grade+"학점");
	}

}
