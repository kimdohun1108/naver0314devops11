package day0327;

public class StudentDto {

	private String name;
	private int age;
	private int java;
	private int spring;
	private int html;
	
	//디폴트 생성자
	public StudentDto() 
	{
		super();
	}
	//매개변수있는 생성자 
	public StudentDto(String name,int age,int java,int spring,int html)
	{
		super();
		this.name = name;
		this.age = age;
		this.java = java;
		this.spring = spring;
		this.html = html;
	}
	//set&&get
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getJava() {
		return java;
	}

	public void setJava(int java) {
		this.java = java;
	}

	public int getSpring() {
		return spring;
	}

	public void setSpring(int spring) {
		this.spring = spring;
	}

	public int getHtml() {
		return html;
	}

	public void setHtml(int html) {
		this.html = html;
	}
	//java+spring+html의 합을 반환하는 메서드 (getTotal)
	public int getTotal()
	{
		return java + spring + html;
	}
	//getTotal() / 3.0으로 나누어서 변환하는 메서드 (getAvg)
	public double getAvg()
	{
		return getTotal() / 3.0;
	}
	//getAvg()의 값이 90이상이면 "*****", 80이상이면 "****", 70이상이면"***", 나머지 "*"
	//반환하는 메서드 (getGrade)
	public String getGrade()
	{
		if(getAvg()>=90)
		{
			return "*****";
		}
		else if(getAvg()>=80)
		{
			return "****";
		}
		else if(getAvg()>=70)
		{
			return "***";
		}
		else
			return "*";
	}
}
