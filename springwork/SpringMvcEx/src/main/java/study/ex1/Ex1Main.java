package study.ex1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex1Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("������ �ڹٹ������ ȣ�� #1");
		MessageInter m = null;
		m = new Message1();
		String s = m.sayHello("�̿���");
		System.out.println(s);
		
		m=new Message2();
		s=m.sayHello("��ȣ��");
		System.out.println(s);
		
		System.out.println("\n������ ������� ȣ�� #2");
		ApplicationContext context=new ClassPathXmlApplicationContext("appex1.xml");//xml���� beans�� �����߱⶧����
		//���1
		MessageInter m1=(Message1)context.getBean("mes1");//��ȯŸ���� object �̱⶧���� ����ȯ �ʼ�
		s=m1.sayHello("ĵ��");
		System.out.println(s);
		
		//���2
		m1=context.getBean("mes2", Message2.class);
		s=m1.sayHello("����Ŭ");
		System.out.println(s);
	}	

}
