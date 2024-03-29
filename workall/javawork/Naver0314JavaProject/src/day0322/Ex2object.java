package day0322;
class Orange{
	//private 접근지정자는 같은 클래스내에서만 접근 가능
	//클래스 멤버는 초기화 안해도됨 자동초기화
	private String name;
	private int age;
	private static String company = "삼성";


	//getter 메서드 : 멤버변수값을 반환!!하는 메서드 (규칙 getName, getAge)
	public String getName()
	{
		return name;
		//return this.name;
	}
	public int getAge()
	{
		return age;
	}
	//static 변수를 반환하는 메서드
	public static String getCompany()
	{
		return company;
	}

	//setter 메서드 : 외부로부터 값을 받아서 멤버변수의 값을 	변경
	public void setName(String name)
	{
		this.name = name;//인자에 있는 name 값을 멤버변수 name으로 전달
	}
	public void setAge(int age)
	{
		this.age = age;
	}
}

public class Ex2object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Orange or = new Orange();
		System.out.println("초기값 확인");
		System.out.println("name"+or.getName());
		System.out.println("age"+or.getAge());

		System.out.println("이름과 나이 변경 후 출력");
		or.setName("옥순이");
		or.setAge(23);
		System.out.println("name"+or.getName());
		System.out.println("age"+or.getAge());

		//static 메서드 호출 
		System.out.println("회사명 : "+Orange.getCompany());
	}

}
