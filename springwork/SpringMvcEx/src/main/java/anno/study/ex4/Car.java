package anno.study.ex4;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;

//xml������� ���
//public class Car {
//	private String carName;
//	private Tire tire;
//	
//	public Car(Tire tire)
//	{
//		this.tire = tire;
//	}
//	
//	public void setCarName(String carName)
//	{
//		this.carName = carName;
//	}
//	
//	public void carInfo()
//	{
//		System.out.println("�ڵ����� : "+carName);
//		System.out.println("Ÿ�̾� : "+tire.getTireName());
//	}
//}

//annotation������� ����
@Component //id = car
@RequiredArgsConstructor
public class Car {
	@Value("�ƿ��")
	private String carName;
	
	//@Autowired //�ڵ����� ã�Ƽ� ���� 
	//private Tire tire; //�̹����� Tire�� ������ Ŭ������ 2���̹Ƿ� ��ȣ������ ���� ����
	//private KoreaTire tire; //�̰��� ��Ȯ�ϰ� Ŭ���������� ������ �ؾ߸� ���� �߻� X
	
	@NonNull
	private CanadaTire tire;
	
	public void carInfo()
	{
		System.out.println("�ڵ����� : "+carName);
		System.out.println("Ÿ�̾� : "+tire.getTireName());
	}
}
