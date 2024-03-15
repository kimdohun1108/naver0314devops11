package day0315;

import java.util.Scanner;

public class Ex5Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Scanner 선언
		Scanner sc = new Scanner(System.in);//System.in : 키보드로 입력받는 인스턴스 변수
		String msg = "";
		System.out.println("메세지를 입력하세요.");
		msg = sc.nextLine();//한줄로 전제 읽는다(문자열)
		System.out.println("입력한 문자열은 \""+msg+"\" 입니다.");// "출력 : \"
		System.out.println("입력한 문자열은 \'"+msg+"\' 입니다.");// '출력 : \'
		
		int age;
		System.out.println("당신의 나이는?");
		//age = sc.nextInt();
		age = Integer.parseInt(sc.nextLine()); // 문자열로 읽어서 정수로 변환
		System.out.println("내 나이는 "+age+"세입니다.");
	}

}
