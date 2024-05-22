package anno.study.ex4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Ex4Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ct = new ClassPathXmlApplicationContext("appex4.xml");
		//Hello h = (Hello)ct.getBean("hello");
		Hello h = (Hello)ct.getBean("h");
		h.showMessage();
		
		Car car = (Car)ct.getBean("car");
		car.carInfo();
	}

}
