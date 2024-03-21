package day0321;

import java.util.Scanner;

public class Ex4ArrayAlphapcount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String msg;
		int alpha[] = new int[26];

		System.out.println("알파벳 입력 : ");
		msg = sc.nextLine();


		for(int i=0;i<msg.length();i++)
		{
			char ch = msg.toUpperCase().charAt(i);// 대문자 변경후 i번지 글자 얻기
			if(ch>='A' && ch<='Z')
			{
				alpha[ch-'A']++;	
			}
		}

		System.out.println("** 알파벳별 개수 구하기 **");
		for(int i=0;i<alpha.length;i++)
		{
			System.out.printf("%c : %d\t",(char)('A'+i),alpha[i]);
			if((i+1)%5==0)// 5개씩 쓰고 줄바꿈
			{
				System.out.println();
			}
		}
	}

}
