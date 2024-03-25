package day0325;
//Ex9에서 만든 Animal,Cat,Dog클래스를 이용한 예제
public class Ex10Inheri {
	public static void showAnimal(Animal ani)
	{
		ani.writeAnimal();//이때 ani 변수는 Cat이 되기도 하고 Dog가 되기도 한다.
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		showAnimal(new Cat());
		showAnimal(new Dog());
	}

}
