package day0315;

import java.util.Scanner;

public class Ex13Munje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int score;
		String msg;
		String str1 = "참 잘했어요!!";
		String str2 = "수고했어요!";
		String str3 = "조금 더 노력하세요!";
		String str4 = "재시험입니다.";
		System.out.println("점수입력 : ");
		Scanner sc = new Scanner(System.in);
		score = sc.nextInt();
		
		msg = score>90?str1:
			  score>80?str2:
		      score>70?str3:str4;
		      
		System.out.println(msg);
	
		
	}

}
