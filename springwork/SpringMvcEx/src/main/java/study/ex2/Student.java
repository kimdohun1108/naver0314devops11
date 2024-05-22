package study.ex2;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Setter
@RequiredArgsConstructor
public class Student {
	private String schoolName;
	//final 변수, @Nonull 을 붙여서 @RequiredArgsConstructor (한변수만 생성자 주입)***
	@NonNull
	Myinfo myinfo;
//	final Myinfo myinfo = null;
	
//	//myinfo정보는 생성자 주입
//	private void Student(Myinfo info) {
//		// TODO Auto-generated method stub
//		myinfo = info;
//	}
//	
//	//학교명은 setter 주입
//	public void setSchoolName(String schoolName) {
//		this.schoolName = schoolName;
//	}
	
	public void show()
	{
		System.out.println(myinfo); //toString 호출
		System.out.println("학교명 : "+schoolName);
	}
}
