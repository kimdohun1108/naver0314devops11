package day0320;

public class Ex7Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//정렬
		int date[] = {1,2,3,4,5,6,7,8,9,10};
		int max, min;
		max = min = date[0];//무조건 첫데이터를 max 또는 min 지정
		System.out.println(date.length);
		
		for(int i=1;i<date.length;i++)
		{
			if(max<date[i])
			{
				max = date[i];
			}
			if(min>date[i])
			{
				min = date[i];
			}
			System.out.println("최대값 : "+max);
			System.out.println("최소값 : "+min);
			
			int pcnt = 0, mcnt = 0;
			//배열 데이터중 양수의 개수와 음수의 개수를 구하여 출력
			for(int i2=0;i2<date.length;i2++)
			{
				if(date[i2]%2==0)
				{
					mcnt++;
				}
				else
				{
					pcnt++;
				}
			}
			System.out.printf("양수 : %d",pcnt);
			System.out.println();
			System.out.printf("음수 : %d",mcnt);
		}
	}

}
