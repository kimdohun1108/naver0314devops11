package anno.study.ex5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex5Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ct = new ClassPathXmlApplicationContext("appex5.xml");
		
		Emp emp = (Emp)ct.getBean("emp");
		emp.sawonInfo();
	}

}


