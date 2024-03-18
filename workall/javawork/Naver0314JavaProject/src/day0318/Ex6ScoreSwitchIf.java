package day0318;

import java.util.Scanner;

public class Ex6ScoreSwitchIf {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int score;
		String msg;
		
		System.out.println("점수?");
		Scanner sc = new Scanner(System.in);
		score = sc.nextInt();
		//if문을 이용하여 점수를 잘못입력했을떄 메서드 종료
		if(score<1 || score>100)
		{
			System.out.println("잘못된 점수입니다.");
			return;
		}
		
//		switch(score/10)
//		{
//		case 10, 9:
//			msg="A";
//			break;
//		case 8:
//			msg="B";
//			break;
//		case 7:
//			msg="C";
//			break;
//		case 6:
//			msg="D";
//			break;
//		default:
//			msg="F";
//		}
		
		if(score>=90)
			msg = "A";
		else if(score>=80)
			msg = "B";
		else if(score>=70)
			msg = "C";
		else if(score>=60)
			msg = "D";
		else
			msg = "F";
		
		System.out.println(score+"점은 "+msg+"학점입니다.");
	}

}
