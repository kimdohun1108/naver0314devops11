package day0321;

import java.util.Scanner;

public class Ex8Array2chaBingo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int arr[][] = new int[3][3];
		int binggo = 0;
		for(int i=0;i<i+1;i++)
		{
			//2차원 배열 1~3 임의값 발생
			for(int j=0;j<arr.length;j++)
			{
				for(int k=0;k<arr[0].length;k++)
				{
					arr[j][k] = (int)(Math.random()*3)+1;
				}
			}
			//출력
			for(int j=0;j<arr.length;j++)
			{
				for(int k=0;k<arr[0].length;k++)
				{
					System.out.printf("%4d",arr[j][k]);
				}
				System.out.println();
			}
			//빙고개수나 꽝 출력
			for(int j=0;j<arr.length;j++)
			{
				int count = 0;
				int count2 = 0;
				int count3 = 0;
				int count4 = 0;
				for(int k=0;k<arr.length;k++)
				{
					if(arr[j][k]==arr[j][0])
					{
						count++;//열
					}
					if(arr[k][j]==arr[0][j])
					{
						count2++;//행
					}
					if(j==k && arr[j][k]==arr[0][0])
					{
						count3++;//대각
					}
					if((j + k == arr.length - 1 && arr[j][k] == arr[0][arr.length - 1])
							{
						count4++;
							}
				}
				if(count==arr.length || count2==arr.length || count3==arr.length || count4==arr.length)
				{
					binggo++;
				}
			}
			
			if(binggo==0)
			{
				System.out.println("꽝");
			}
			else
			{
				System.out.printf("빙고 수 : %d",binggo);
				System.out.println();
			}
			
			
			System.out.println("종료 : x");
			String ans;
			ans = sc.nextLine();
			if(ans.equalsIgnoreCase("x"))
			{
				System.out.println("빙고 중지");
				break;
			}
		}
	}

}
