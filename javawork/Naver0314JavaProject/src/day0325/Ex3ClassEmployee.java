package day0325;

public class Ex3ClassEmployee {
	public static void showTitle() {
		// TODO Auto-generated method stub
		System.out.println("\t\t** 사원 정보 **\n");
		System.out.println("번호\t이름\t직급\t나이\t기본급\t수당\t실수령액");
		System.out.println("=".repeat(70));
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Employee []em= {
				new Employee(),
				new Employee("강호동","사원",30),
				new Employee("유재석","과장",42),
				new Employee("이영자","차장",45),
				new Employee("손미나",23)				
		};
		
		//0번 데이타 수정
		em[0].setName("이광수");
		em[0].setPosition("사원");
		em[0].setAge(29);
		em[0].setGibon(340);
		em[0].setSudang(23);
		
		//1번 데이타 수정
		em[1].setPay(450,100);//기본급과 수당을 같이 수정
		//2번 데이타 수정
		em[2].setSawon("유재남","계장",41);
		em[2].setPay(410,80);//gibon,sudang 을 변경하는 메서드
		//3번 데이타 수정
		em[3].setPay(560,120);
		//4번 데이타 수정
		em[4].setPosition("사원");
		em[4].setPay(289,67);
		
		
		//출력
		showTitle();//static 메서드로 제목 출력
		for(int i=0;i<em.length;i++)
		{
			System.out.println(i+1+"\t"+em[i].getName()+"\t"+em[i].getPosition()+"\t"+
					em[i].getAge()+"\t"+em[i].getGibon()+"\t"+em[i].getSudang()+"\t"+em[i].getNetPay());//netpay=gibon+sudang
		}
	}

}
