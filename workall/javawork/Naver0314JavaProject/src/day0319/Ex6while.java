package day0319;

public class Ex6while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n = 10;
		//선조건 : 조건이 맞지 않으면 바로 반복문으 빠져나감
		while(n>10)
		{
			System.out.println("Hello!");
		}
		System.out.println();
		//후조건 : 일단 로직을 처리한후 조건을 비교하여 빠져나감
		do
		{
			System.out.println("Hello2");
		}while(n>10);
		
		int a = 1;
		while(a<10)
		{
			System.out.printf("%3d",a++);
		}
		a = 1;//다시 선언 (초기화)
		while(true)
		{
			System.out.printf("%3d",a++);
			if(a>10)
				break;
		}
			
		
	}

}
