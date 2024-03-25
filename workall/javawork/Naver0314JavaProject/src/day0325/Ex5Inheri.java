package day0325;

//같은 패키지 내에서는 부모가 가진 메서드 중 private을 제외하고 모두 상속가능
class Parent1{
	void method1()
	{
		System.out.println("부모의 디폴트 메서드");
	}
	
	protected void method2()
	{
		System.out.println("부모의 protected 메서드");
	}
	private void method3()
	{
		System.out.println("부모의 private 메서드");
	}
	public void method4()
	{
		System.out.println("부모의 public 메서드");
	}
}
//서브클래스 구현
class sub1 extends Parent1{
	public void show()
	{
		System.out.println("this로 호출");
		this.method1();// 디폴트 부모가 다른 패키지에 있다면 호출안됨
		this.method2();
		//this.method3();//private은 상속안됨
		this.method4();
		System.out.println("super로 호출");
		super.method1();
		super.method2();
		//super.method3();//private은 상속안됨
		super.method4();
	}
}

public class Ex5Inheri {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		sub1 s = new sub1();
		s.show();
	}

}
