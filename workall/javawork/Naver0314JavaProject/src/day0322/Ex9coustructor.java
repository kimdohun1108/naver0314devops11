package day0322;

class Student{
	private String name;
	private int kor, eng, tot;
	private double avg;
	
	Student()
	{
		this("이름 미정",20,20);
	}
	
	Student(String name)
	{
		this(name,50,50);
	}
	
	Student(String name,int kor,int eng)
	{
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.tot = kor + eng;
		this.avg = tot / 2.0;
	}
	
	public void show()
	{
		System.out.println("이름 : "+name);
		System.out.println("국어점수 : "+kor);
		System.out.println("영어점수 : "+eng);
		System.out.println("총점 : "+tot);
		System.out.println("평균 : "+avg);
		System.out.println("=".repeat(20));
	}
}

public class Ex9coustructor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student stu1 = new Student();
		stu1.show();
		
		Student stu2 = new Student("김도훈");
		stu2.show();
		
		Student stu3 = new Student("김도훈",90,80);
		stu3.show();
	}

}
