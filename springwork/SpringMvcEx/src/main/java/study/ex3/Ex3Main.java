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
		
		System.out.println("�̱����ΰ��� ������ �����ص�"+"�ּҰ� ����\n prototype�� ���� ���� �����Ҷ����� ���ο� �ּҿ� �����ȴ�");
		System.out.println(mc.hashCode());
		System.out.println(mc2.hashCode()); //�ּ����
	}

}
