package day0322;

public class sawon {
	private String name;
	private int	gibon;
	private int sudang;
	
	public void setName(String name)
	{
		this.name = name;
	}
	public void setGibon(int gibon)
	{
		this.gibon = gibon;
	}
	public void setSudang(int sudang)
	{
		this.sudang = sudang;
	}	
	
	public void setSawon(String name,int gibon,int sudang)
	{
		setName(name);
		setGibon(gibon);
		setSudang(sudang);
	}
	
	//실수령액을 반환하는 메서드
	public int getNetpay()
	{
		int pay = 0;
		pay = gibon - (gibon*3/100) + sudang;
		return pay;
	}
	
	public String getName()
	{
		return name;
	}
	public int getGibon()
	{
		return gibon;
	}
	public int getSudang()
	{
		return sudang;
	}
}
