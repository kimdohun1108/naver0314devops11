package day0321;

public class Ex5ArrayAgeConut {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int memberAge[] = {12,56,34,23,34,59,46,6,11,29,32,49,51,38,44,55,5,7,15,28};
		System.out.println("총 인원수 : "+memberAge.length);
		int agecount[] = new int[6];
		
		for(int i=0;i<memberAge.length;i++)
		{
			 for(int j=0;j<agecount.length;j++)
			 {
				 if(j==memberAge[i]/10)
				 {
					 agecount[j]++;
					 break;
				 }
			 }
		}
//		for(int i=0;i<memberAge.length;i++) // 배열은 if문 for문 많이 안쓰고 사용가능
//		{
//			agecount[memberAge[i]/10]++;
//		}
		
		
		for(int i=0;i<6;i++)
		{
			System.out.println(agecount[i]);
		}
	}

}
