package study.ex3;

import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Setter
@Getter
public class Person {
	@NonNull
	private String name;
	private String phone;
	
//	public Person(String name)
//	{
//		this.name = name;
//	}
//	
//	public void setPhone(String phone)
//	{
//		this.phone = phone;
//	}
//	
//	public String getName() {
//		return name;
//	}
//	
//	public String getPhone() {
//		return phone;
//	}
}	
