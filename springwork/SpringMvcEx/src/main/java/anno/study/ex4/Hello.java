package anno.study.ex4;

import org.springframework.stereotype.Component;

//@Component //�̸����� ������ ��� Ŭ���� �̸��� �� id�� �ȴ�.
@Component("h") //id = h
public class Hello {
	public void showMessage()
	{
		System.out.println("Hello class�� ���� �޼ҵ��Դϴ�!");
	}
}
