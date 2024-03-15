package day0315;

public class Ex4MainArgs {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// String args : 당연히 문자열
		System.out.println(args[0]);
		System.out.println(args[1]);
		
		System.out.println(args[2]+args[3]); //"10"+"20"
		//문자열 -> 숫자로 변환후 계산
		int s1 = Integer.parseInt(args[2]);
		int s2 = Integer.parseInt(args[3]);
		System.out.println(s1+s2);
	}

}
