package day0322;

public class Ex5callby {
	
	public static void changeNum(int n)
	{
		n = 10;
	}
	public static void changeArray(int a[])
	{
		a[1] = 200;
	}
	
	static public void changeHome(String home)
	{
		home = "제주도";
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n = 50;
		changeNum(n);//값만 전달, call by value(기본형)
		System.out.println("n = "+n);
		
		int arr[] = {3,5,7};//배열은 객체로 인식
		changeArray(arr);//주소 전달, call by reference
		for(int a:arr)
		{
			System.out.printf("%4d",a);
		}
		System.out.println();
		
		String home = "서울";
		changeHome(home);//값만 전달, call by value
		System.out.println(home);
	}

}
