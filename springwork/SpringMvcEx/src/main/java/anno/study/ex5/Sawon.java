package anno.study.ex5;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class Sawon {
	@Value("±èµµÈÆ")
	private String name;
	@Value("¼º³²")
	private String addr;
	@Value("19")
	private int age;
}
