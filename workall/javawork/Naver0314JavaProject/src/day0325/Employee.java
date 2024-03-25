package day0325;

public class Employee {
	private String name;
	private String position;
	private int age;
	private int gidon;
	private int sudang;
	
	public Employee()
	{
		this("이름없음","없음",0);
	}
	public Employee(String name,int age)
	{
		this(name,"없음",age);
	}
	public Employee(String name,String position,int age)
	{
		this.name = name;
		this.position = position;
		this.age = age;
	}
	
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPosition()
	{
		return position;
	}
	public void setPosition(String position)
	{
		this.position = position;
	}
	public int gatAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	
	public int getGidon()
	{
		return gidon;
	}
	public void setGidon(int gidon)
	{
		this.gidon = gidon;
	}
	public int getSudang()
	{
		return sudang;
	}
	public void setSudang(int sudang)
	{
		this.sudang = sudang;
	}
	
	public void setSawon(String name,String position,int age)
	{
		this.name = name;
		this.position = position;
		this.age = age;
	}
	public void setPay(int gidon,int sudang)
	{
		this.gidon = gidon;
		this.sudang = sudang;
	}
	public int getNetPay()
	{
		return gidon + sudang;
	}
	
}
