package day0319;

public class Ex3Munje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = 0, y = 0;
		for(int i=1;i<10;i++)
		{
			if(i<6 && i!=1) 
			{
				x = i;
				System.out.printf("x의 숫자는?%d ",x);
			}
		}
		System.out.println();
		for(int j=1;j<10;j++)
		{
			if(j>5)
			{
				y = j;
				System.out.printf("y의 숫자는?%d ",y);
			}
		}
		
	}

}
