package anno.study.ex4;

import org.springframework.stereotype.Component;

@Component //id = canadaTire
public class CanadaTire implements Tire {
	@Override
	public String getTireName() {
		return "캐나다타이어";
	}
}
