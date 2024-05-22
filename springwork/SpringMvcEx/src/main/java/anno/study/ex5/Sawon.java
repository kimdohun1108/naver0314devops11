package anno.study.ex5;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class Sawon {
	@Value("�赵��")
	private String name;
	@Value("����")
	private String addr;
	@Value("19")
	private int age;
}
