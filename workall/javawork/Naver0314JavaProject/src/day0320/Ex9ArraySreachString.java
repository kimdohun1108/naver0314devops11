package day0320;

import java.util.Scanner;

public class Ex9ArraySreachString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String members[] = {"강호동","한가인","유재석","이승민","강하나","손미나","이영자","박남정","한지혜","손창민"};
		String sreachname;
		int sreachIndex = -1;
		for(int i=0;i<i+1;i++)
		{
			System.out.println("검색할 이름(q,Q : 종료) : ");
			sreachname = sc.nextLine();
			if(sreachname.equals("Q") || sreachname.equals("q"))
			{
				System.out.println("종료합니다");
				break;
			}
			for(int j=0;j<members.length;j++)
			{
				if(sreachname.equals(members[j]))
				{
					sreachIndex = j;
					break;
				}
			}
			if(sreachIndex==-1)
			{
				System.out.println("없음");
			}
			else
			{
				System.out.printf("검색한 이름 : %s 인덱스 : %d\n",sreachname,sreachIndex+1);
			}
			

		}
	}

}
