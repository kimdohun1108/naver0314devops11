package study.ex3;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Setter

@RequiredArgsConstructor
public class MyCart {
	Person person;
	@NonNull
	private String sangpum;
	@NonNull
	private int price;
	
//	public MyCart(String sangpum, int price)
//	{
//		this.sangpum = sangpum;
//		this.price = price;
//	}
//	
//	public void setPerson(Person person)
//	{
//		this.person = person;
//	}
	
	public void showInfo()
	{
		System.out.println("������ ��� �̸� : "+person.getName());
		System.out.println("������ ��� �ڵ��� : "+person.getPhone());
		System.out.println("��ǰ�� : "+sangpum);
		System.out.println("��ǰ���� : "+price);
	}
}
