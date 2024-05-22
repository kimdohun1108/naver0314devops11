package anno.study.ex4;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;

//xml방식으로 등록
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
//		System.out.println("자동차명 : "+carName);
//		System.out.println("타이어 : "+tire.getTireName());
//	}
//}

//annotation방식으로 수정
@Component //id = car
@RequiredArgsConstructor
public class Car {
	@Value("아우디")
	private String carName;
	
	//@Autowired //자동으로 찾아서 주입 
	//private Tire tire; //이번에는 Tire를 구현한 클래스가 2개이므로 모호성으로 인해 오류
	//private KoreaTire tire; //이경우는 정확하게 클래스명으로 선언을 해야만 오류 발생 X
	
	@NonNull
	private CanadaTire tire;
	
	public void carInfo()
	{
		System.out.println("자동차명 : "+carName);
		System.out.println("타이어 : "+tire.getTireName());
	}
}
