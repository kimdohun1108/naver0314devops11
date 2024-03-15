package day0315;

import java.util.Scanner;

public class Ex8munje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int age;
		String name, hp, birthday;
		System.out.println("이름은?");
		name = sc.nextLine();
		System.out.println("핸드폰번호는?");
		hp = sc.nextLine();
		System.out.println("생일은?");
		birthday = sc.nextLine();
		System.out.println("나이는?");
		age = sc.nextInt();
		
		
		System.out.printf("이름 : %s\n",name);
		System.out.printf("핸드폰번호 : %s\n",hp);
		System.out.printf("생일 : %s\n",birthday);
		System.out.printf("나이 : %d\n",age);

	}

}
