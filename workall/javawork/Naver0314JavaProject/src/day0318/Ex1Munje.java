package day0318;

import java.util.Scanner;

public class Ex1Munje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int score;
		String msg;
		String str1 = "A";
		String str2 = "B";
		String str3 = "C";
		String str4 = "D";
		String str5 = "F";
		
		System.out.println("점수?");
		Scanner sc = new Scanner(System.in);
		score = sc.nextInt();
		//if문을 이용하여 점수를 잘못입력했을떄 메서드 종료
		if(score<1 || score>100)
		{
			System.out.println("잘못된 점수입니다.");
			return;
		}
		msg = score>=90?str1:
			  score>=80?str2:
		      score>=70?str3:
		      score>=60?str4:str5;
		      
		System.out.printf("%d점은 %s학점입니다.",score,msg);
	}

}
