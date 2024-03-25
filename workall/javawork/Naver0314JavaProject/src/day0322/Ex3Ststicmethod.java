package day0322;
class Myshop{
	private String sanpum;
	private int su, dan;
	private static String msg;
	
	public static final String SHOP = "24시간이마트";
	
	//setter method
	public void setSanpum(String sanpum)
	{
		this.sanpum = sanpum;
	}
	public void setSu(int su)
	{
		this.su = su;//이것도 가능
	}
	public void setDan(int dan)
	{
		this.dan = dan;
	}
	static public void setMsg(String msg)
	{
		Myshop.msg = msg;
	}
	//한큐에
	public void setDate(String sanpum,int su,int dan)
	{
		//메서드 안에서 같은 멤버 메거드는 this로 호출 가능
		this.setSanpum(sanpum);
		this.setSu(su);
		this.setDan(dan);
	}
	//오버로딩 메서드 : 메서드명은 같으나 인자가 달라야함
	public void setDate(String sanpum,int su,int dan,String msg)
	{
		//메서드 안에서 같은 멤버 메거드는 this로 호출 가능
		this.setSanpum(sanpum);
		this.setSu(su);
		this.setDan(dan);
		//인스턴스 -> static 호출 가능
		//static -> 인스턴스 호출 불가능
		//static -> static 호출 가능
		setMsg(msg);//같은 클래스여서 클래스명 생략
	}
	
	
	//출력은 getter가 아닌 일반 멤버 메서드 출력
	public void writeDate()
	{
		System.out.println("상품명 : "+sanpum);
		System.out.println("수량 : "+su);
		System.out.println("총금액 : "+su*dan);
		System.out.println("오늘의 메세지 : "+msg);
		System.out.println("=".repeat(20));
	}
}
public class Ex3Ststicmethod {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Myshop sang1 = new Myshop();
		Myshop sang2 = new Myshop();
		Myshop sang3 = new Myshop();

		System.out.println("** 상품1 **");
		sang1.setSanpum("딸기");
		sang1.setSu(3);
		sang1.setDan(2300);
		Myshop.setMsg("오능 각종 과일 세일합니다!!");
		sang1.writeDate();

		System.out.println("** 상품2 **");
		sang2.setDate("수박",2,30000);
		sang2.writeDate();

		System.out.println("** 상품3 **");
		sang3.setDate("참외",5,2000,"오늘 세일 마감!!");
		sang3.writeDate();

		System.out.println("** 상품1 다시 출력 **");
		sang1.writeDate();
		
		
	}

}
