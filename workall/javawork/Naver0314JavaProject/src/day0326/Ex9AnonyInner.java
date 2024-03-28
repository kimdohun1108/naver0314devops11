package day0326;

abstract class Hello{
	abstract public void study();
}

interface Happy
{
	public void insert();
	public void delete();
}

class Kiwi
{
	//익명내부클래스 (클랴스 이름이 없음)
	Hello h = new Hello() {
		
		@Override
		public void study() {
			// TODO Auto-generated method stub
			System.out.println("익명내부클래스에 대하여 공부중");
		}
	};
	//익명내부클래스 (클랴스 이름이 없음)
	Happy ha = new Happy() {
		
		@Override
		public void insert() {
			// TODO Auto-generated method stub
			System.out.println("데이터를 추가합니다.");
		}
		
		@Override
		public void delete() {
			// TODO Auto-generated method stub
			System.out.println("데이터를 삭제합니다.");
		}
	};
}
public class Ex9AnonyInner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Kiwi k = new Kiwi();
		k.h.study();
	}

}
