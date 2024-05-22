package study.ex1;

public class Ex1main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("기존의 자바방식으로 호출 #1");
		MessageInter m = null;
		m = new Message1();
		String s = m.sayHello("이영자");
		System.out.println(s);
	}

}
