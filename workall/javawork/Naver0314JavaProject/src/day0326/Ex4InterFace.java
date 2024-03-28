package day0326;

interface InterA
{
	int MAX = 10;//상수이지만 구분할 필요가 없으므로 final 생략
	public void disp();//추상메서드이지만 구분할 필요가 없으므로 abstract 생략
	public void study();
}

class MyInter implements InterA{
	@Override
	public void disp() 
	{
		// TODO Auto-generated method stub
		System.out.println("현재 최대 인원수는 "+MAX+"명 입니다");
	}
	
	@Override
	public void study() 
	{
		// TODO Auto-generated method stub
		System.out.println("우리는 인터페이스를 공부하고 있어요!!");
	}
	
	public void play()
	{
		System.out.println("게임을 합니다");
	}
}
public class Ex4InterFace {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InterA a = new MyInter();
		a.disp();
		a.study();
		//a.play();//호출 안됨
		((MyInter)a).play();//강제캐스팅 가능(서브클래스로 가능)
	}

}
