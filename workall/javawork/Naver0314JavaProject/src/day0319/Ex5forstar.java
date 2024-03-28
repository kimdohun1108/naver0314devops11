package day0319;

public class Ex5forstar {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int i=0;i<5;i++)
		{
			for(int j=0;j<5;j++)
			{
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println("+++++++++++++++++++++++++++++++");
		for(int i=1;i<6;i++)//행
		{
			for(int j=0;j<i;j++)//열
			{
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println("+++++++++++++++++++++++++++++++");
		for(int i=0;i<5;i++)
		{
			for(int j=i;j<5;j++)
			{
				System.out.print("*");
			}
			System.out.println();
		}
	}

}
