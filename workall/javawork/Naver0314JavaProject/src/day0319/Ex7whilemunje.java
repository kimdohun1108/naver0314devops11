package day0319;

import java.util.Scanner;

public class Ex7whilemunje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int score, count=0, sum=0;
		while(true)
		{
			System.out.println("숫자 입력(종료 : 0) : ");
			score = sc.nextInt();
			if(score==0)
			{
				break;
			}
			sum += score;
			count++;
		}
		System.out.printf("개수%d,합계%d",count,sum);
	}

}
