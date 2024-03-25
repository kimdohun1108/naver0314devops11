package day0325;

public class Studant {
	private String name;
	private int java;
	private int spring;
	
	
	public Studant() 
	{
		this("김도훈",90,90);
	}
	public Studant(String name) {
		//super();
		this.name = name;
	}
	public Studant(int spring,int java)
	{
		this.spring = spring;
		this.java = java;
	}
	public Studant(String name,int spring,int java)
	{
		this.name = name;
		this.spring = spring;
		this.java = java;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	
	public void setScore(int java,int spring)
	{
		this.java = java;
		this.spring = spring;
	}
	public int getTotal()
	{
		return java + spring;
	}
	public double getAverage()
	{
		return getTotal() / 2.0;
	}
	
	public String getGrade()
	{
		if(getAverage()>=90.0)
			return "장학생";
		else if(getAverage()>=80.0)
			return "우등생";
		else
			return "재시험";
	}
}
