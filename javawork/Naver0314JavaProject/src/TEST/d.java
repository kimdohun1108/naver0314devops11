package TEST;

public class d {
	public int solution212(int arr[])
	{
		int count = 0;
		for(int i = 0; i < arr.length-3; i++) 
		{
			if (arr[i]==1) 
			{
				if (arr[i + 1] == 2) 
				{
					if (arr[i + 2] == 3) 
					{
						if (arr[i + 3] == 1) 
						{
							for(int k=0;k<4;k++)
							{
								for (int j = i; j < arr.length; j++) 
								{
									arr[i] = arr[i + 1];
								}
							}
							count++;
						}
					}
				}
			}
		} 
		return count;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		d sol = new d();
		int arr[] = {2,1,1,2,3,1,2,3,1};
		sol.solution212(arr);
		
	}

}
