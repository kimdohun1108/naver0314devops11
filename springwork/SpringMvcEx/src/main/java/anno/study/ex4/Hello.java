package anno.study.ex4;

import org.springframework.stereotype.Component;

//@Component //이름없이 선언일 경우 클래스 이름이 곧 id가 된다.
@Component("h") //id = h
public class Hello {
	public void showMessage()
	{
		System.out.println("Hello class가 가진 메소드입니다!");
	}
}
