package day0318;

import java.util.Scanner;

public class Ex12gugudan {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int num, gugu;
		System.out.println("구구단?");
		num = sc.nextInt();
		for(int i=1;i<10;i++)
		{
			if(num>=11 || num<1)
			{
				System.out.println("잘못된 숫자입니다.");
				break;
			}
			gugu = num * i;
			System.out.printf("%d * %d = %d\n",num,i,gugu);
		}
	}

}
