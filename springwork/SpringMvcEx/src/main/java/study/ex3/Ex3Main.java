package study.ex3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex3Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ct = new ClassPathXmlApplicationContext("appex3.xml");
		MyCart mc = (MyCart)ct.getBean("b");
		mc.showInfo();
		System.out.println();
		MyCart mc2 = (MyCart)ct.getBean("b");
		mc2.showInfo();
		
		System.out.println("싱글톤인경우는 여러번 생성해도"+"주소가 같고\n prototype인 경우는 새로 생성할때마다 새로운 주소에 생성된다");
		System.out.println(mc.hashCode());
		System.out.println(mc2.hashCode()); //주소출력
	}

}
