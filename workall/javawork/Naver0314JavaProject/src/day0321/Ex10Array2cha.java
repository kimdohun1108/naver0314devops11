package day0321;

public class Ex10Array2cha {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int arr[][];
		arr = new int[][]{{3,4,5},{1,5,7,9,11},{10,20,30,40}};
		
		System.out.println("행의 개수 : "+arr.length);
		System.out.println("0행의 열개수 : "+arr[0].length);
		System.out.println("1행의 열개수 : "+arr[1].length);
		System.out.println("2행의 열개수 : "+arr[2].length);
		
		for(int i=0;i<arr.length;i++)
		{
			for(int j=0;j<arr[i].length;j++)
			{
				System.out.print(arr[i][j]+"\t");	
			}
			System.out.println();
		}
	}

}
