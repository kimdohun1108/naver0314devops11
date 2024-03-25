package day0322;

class Apple{
	String msg = "Happy Day!!";//인스턴스 멤버변수
	static String message = "오늘은 금요일";//stsatic 멤버변수(클래스 멤버변수)
}

class Banana{
	static int kor = 100;
	static int eng = 80;
	String name = "마이클";
}
public class Ex1object {
	//멤버 변수
	String name = "홍길동";//인스턴스 변수
	final static int MAX = 100;//static 변수
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		ststic멤버 메서드는 static멤버 변수나 멤버 메서드만 
//		접근이 가능하다
//		일반 인스턴스 메서드나 변수를 접근하기 위해서는 new로 생성후
//		그 변수를 이용해서 호출
		System.out.println(Ex1object.MAX);//static변수 (클래스명.변수명)
		System.out.println(MAX);//같은 클래스일 경우 앞에 클래스명은 생략 가능
		
		//System.out.println(name);//오류 발생
		//System.out.println(Ex1object.name);//오류 발생
		//name을 출력하려면 new 생성한 인스턴스 변수가 필요
		Ex1object ex = new Ex1object();
		//(ex==인스턴스) 변수 이 변수를 이용해야만 name이 접근이 가능
		System.out.println(ex.name);
		
		//Apple이 가진 2개의 멤버변수 출력
		Apple ap = new Apple();
		System.out.println(ap.msg);
		System.out.println(Apple.message);
		//System.out.println(message);//오류발생 같은 클래스가 아니여서 
		
		//Banana가 가진 멤버변수 출력
		System.out.println(Banana.kor);
		System.out.println(Banana.eng);
		Banana ba = new Banana();
		System.out.println(ba.name);
	}

}
