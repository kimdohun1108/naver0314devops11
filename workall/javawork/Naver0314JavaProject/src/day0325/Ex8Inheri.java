package day0325;

class Phone2{
	private String modal;
	private String color;
	
	public Phone2(String modal,String color)
	{
		super();
		this.modal = modal;
		this.color = color;
	}
	
	public String getModal()
	{
		return modal;
	}
	public void setModal(String modal)
	{
		this.modal = modal;
	}
	public String getColor()
	{
		return color;
	}
	public void setColor(String color)
	{
		this.color = color;
	}
}

class SmertPhone2 extends Phone2{
	private String wifi;
	
	public SmertPhone2(String modal,String color,String wifi)
	{
		super(modal,color);
		this.wifi = wifi;
	}
	 public void info()
	 {
		 System.out.println("모델명 : "+this.getModal());
		 System.out.println("색상 : "+this.getColor());
		 System.out.println("와이파이 : "+wifi);
		 System.out.println();
	 }
	
}
public class Ex8Inheri {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SmertPhone2 s1 = new SmertPhone2("갤럭시","은색","kt");
		s1.info();
		
		SmertPhone2 s2 = new SmertPhone2("아이폰","핑크색","sk");
		s2.info();
		
		
	}

}
