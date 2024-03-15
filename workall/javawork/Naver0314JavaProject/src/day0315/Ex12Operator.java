package day0315;

import java.util.Scanner;

public class Ex12Operator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//조건(삼항)연산자
		//조건식?참:거짓
		
		Scanner sc =new Scanner(System.in);
		int su1, su2, max;
		System.out.println("두 수 입력 : ");
		su1 = sc.nextInt();
		su2 = sc.nextInt();
		
		max = su1>su2?su1:su2;
		System.out.println("max = "+max);
		
		
		int su11, su22, su33, max2;
		System.out.println("세 수 입력 : ");
		su11 = sc.nextInt();
		su22 = sc.nextInt();
		su33 = sc.nextInt();
		
		max2 = su11>su22&&su11>su33?su11:
			   su22>su11&&su22>su33?su22:su33;
			
		System.out.println("max = "+max);

	}

}
