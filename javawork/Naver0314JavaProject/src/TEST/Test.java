package TEST;

import java.util.Scanner;

class Solution{
	public void solution(int q,int r,String code)
	{
		String msg = "";
		int count = 0;
		String arr[] = new String[(code.length())];
		for(int i=0;i<arr.length;i++)
		{
			arr[i] = ""+code.charAt(i);
		}
		String arr2[] = new String[(arr.length)/q];
		for(int i=r;i<arr.length;i+=q)
		{
			arr2[count] = arr[i];
			count++;
		}
		for(String s:arr2)
		{
			msg += s;
		}
	    System.out.println("답: " + msg);
	}

	
}

public class Test {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Solution sol = new Solution();
		System.out.println("code 문자열입력");
		String code = sc.nextLine();
		System.out.println("q(나눌값)입력");
		int q = sc.nextInt();
		System.out.println("r(나머지)입력");
		int r = sc.nextInt();
		sol.solution(q, r, code);
	}
}