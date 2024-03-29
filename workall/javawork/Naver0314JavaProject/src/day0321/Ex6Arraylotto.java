package day0321;

import java.util.Scanner;

public class Ex6Arraylotto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int lotto[] = new int[6];
		int money, count = 0;
		int arr[];
		
		//입력
		for(int i=0;i<i+1;i++)
		{
			System.out.println("로또금액입력(0 : 종료) : ");
			money = sc.nextInt();
			if(money==0)
			{
				System.out.println("** 종료 **");
				break;
			}
			else if(money<1000)
			{
				System.out.println("금액부족");
				continue;
			}
			else
			{
				count = money/1000;
				break;
			}
		}
		
		//랜덤변수
		for(int j=0;j<count;j++)
		{
			for(int i=0;i<lotto.length;i++)
			{
				int n = (int)(Math.random()*35)+1;//
				lotto[i] = n;
				
				//중복처리
				for(int k=0;k<i;k++)
				{
					if(lotto[i]==lotto[k])
					{
						i--;
						break;//continue Loop;
					}
				}
			}
			//오름차순
			for(int i=0;i<lotto.length-1;i++)// for(int i=0;i<9;i++)
			{
				for(int k=i+1;k<lotto.length;k++) // for(int j=1;j<10;j++)
				{
					if(lotto[i]>lotto[k]) 
					{
						int temp = lotto[i];
						lotto[i] = lotto[k];
						lotto[k] = temp;
					}
				}
			}
			//출력
			System.out.printf("%d회",j+1);
			for(int k=0;k<lotto.length;k++)
			{
				System.out.printf("%4d",lotto[k]);
			}
			System.out.println();
		}
	}
}
