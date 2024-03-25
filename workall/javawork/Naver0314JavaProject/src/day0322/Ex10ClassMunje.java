package day0322;

class Member{
	private String name;
	private String hp;
	private String addr;
	
	public String getName()
	{
		return name;
	}
	public String getHp()
	{
		return hp;
	}
	public String getAddr()
	{
		return addr;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	public void setHp(String Hp)
	{
		this.hp = hp;
	}
	public void setAddr(String addr)
	{
		this.addr =addr;
	}
	
	Member()
	{
		this("김도훈","010-1111-2222","성남");
	}
	Member(String name)
	{
		this(name,"010-2222-3333","성남");
	}
	Member(String name,String hp)
	{
		this(name,hp,"성남");
	}
	Member(String name,String hp,String addr)
	{
		this.name = name;
		this.hp = hp;
		this.addr = addr;
	}
	
	public void writeMember()
	{
		System.out.println("이름 : "+name+" 전화번호 : "+hp+" 주소 : "+addr);
	}
}
public class Ex10ClassMunje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member m1 = new Member();
		Member m2 = new Member("이강인");
		Member m3 = new Member("손흥민","010-2222-3333");
		Member m4 = new Member("Candy","010-4444-5555","제주도");
		
		System.out.println("** 명단 출력 **");
		m1.writeMember();
		m2.writeMember();
		m3.writeMember();
		m4.writeMember();
		
		System.out.println("** m1 멤버의 값 변경하기 **");
		m1.setName("이영자");
		m1.setHp("011-2323-6767");
		m1.setAddr("부산");
		
		m1.writeMember();
	}

}
