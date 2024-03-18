package day0315;

public class Ex11Operator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 증감연산자
		// 전치일경우 1순위, 후치일경우 끝순위
		
		int m = 0, n = 5;
		int a, b = 10;
		++m;
		n++;
		System.out.println("m = "+m);//6
		System.out.println("n = "+n);//6
		
		a += m++;
		b += ++n;
		System.out.println("a = "+a);//16
		System.out.println("m = "+m);//7
		
		System.out.println("b = "+b);//17
		System.out.println("n = "+n);//7
		
		
	}

	
	

}
