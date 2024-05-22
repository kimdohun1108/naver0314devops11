package study.ex2;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Setter
@RequiredArgsConstructor
public class Student {
	private String schoolName;
	//final ����, @Nonull �� �ٿ��� @RequiredArgsConstructor (�Ѻ����� ������ ����)***
	@NonNull
	Myinfo myinfo;
//	final Myinfo myinfo = null;
	
//	//myinfo������ ������ ����
//	private void Student(Myinfo info) {
//		// TODO Auto-generated method stub
//		myinfo = info;
//	}
//	
//	//�б����� setter ����
//	public void setSchoolName(String schoolName) {
//		this.schoolName = schoolName;
//	}
	
	public void show()
	{
		System.out.println(myinfo); //toString ȣ��
		System.out.println("�б��� : "+schoolName);
	}
}
