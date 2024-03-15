package day0315;

public class Ex3DataType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int year = 2024;
		int month = 3;
		int day = 15;
		
		String msg = "Have a Nice Day!!";
		char blood = 'B';
		double avg = 97.4567;
		
		System.out.println("** 출력 1 **");
		System.out.println("날짜: "+year+"-"+month+"-"+day);
		System.out.print("혈액형 : "+blood+"형");
		System.out.println("\t평균 : "+avg);// \t : 탭 자동
		System.out.println("=============");
		/* printf는 변환기호를 이용하여 출력
		 * 정수 %d, 실수 %f, 문자 %c, 문자열 %s
		 */
		System.out.printf("**%40s**\n\n",msg); // 40칸 우측기준
		System.out.printf("**%-40s**\n\n",msg); // 40칸 좌측기준
		System.out.printf("%s\n",msg);
		System.out.printf("날짜 : %d-%d-%d\n",year,month,day);// 2024-3-15
		System.out.printf("날짜 : %2d-%2d-%2d\n",year,month,day);// 2024- 3-15 (공백)
		System.out.printf("날짜 : %02d-%02d-%02d\n",year,month,day);// 2024-03-15
		System.out.printf("나의 혈액형은 %c형 입니다.\n",blood);
		System.out.printf("평균 : %f\n",avg);//소수점 6자리까지
		System.out.printf("평균 : %3.1f점\n",avg);//%3.1f : 전체자리수 3자리(모자라도 상관X) 소수점이하 자리수 1자리
		System.out.printf("평균 : %3.2f점\n",avg);
		System.out.printf("평균 : %3.3f점\n",avg);
		System.out.printf("평균 : %10.2f점\n",avg);//%10.2f : 전체자리수 10자리 소수점이하 자리수 2자리
		System.out.printf("평균 : %-10.2f점\n",avg);
	}

}
