package TEST;

public class sdfddf {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		for(int i=0;i<5;i++)
//		{//줄바꿈
//			for(int j=0;j<i;j++)
//			{//스페이스바
//				System.out.print(" ");
//			}
//			for(int k=5;k>i;k--)
//			{//별찍기
//				System.out.print("*");
//			}
//			System.out.println();
//		}
	
//	for(int i=0;i<i+1;i++)
//	{
//		System.out.print("*");
//	}
		 // TODO Auto-generated method stub
	      // 6. 중첩 for문을 이용해서 아래와 같이 출력하세요.
	      //       4321001234
	      //   0       *
	      //   1      ** *
	      //   2     *** **
	      //   3    **** ***
	      //   4   ***** ****
	      for(int i = 0; i < 5; i++) {
	         for(int k = 4; k > i; k--) {
	            System.out.print(" ");
	         }
	         for(int j = 0; j <= i ; j++) {
	            System.out.print("*");
	         }
	         System.out.println();
	      }

	}
}
