package TEST;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class d3 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Set<String> set1=new TreeSet<>();
		set1.add("1");//JDK5이전에는 set1.add(new Integer(100));
		set1.add("3");
		set1.add("a");
		set1.add("c");
		set1.add("A");
		set1.add("C");
		set1.add("기");
		set1.add("다");
		
		System.out.println("set1 의 데이타 갯수 :"+set1.size());//3개,중복데이타는 1번만 포함
		System.out.println("** 출력 1 **");
		for(String n:set1)
		{
			System.out.print(n);
		}
	}

}
