package coffee.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Alias("DrinkDto")
public class DrinkDto {
	private int category;
	private String dname;
	private String dprice;
	private String dphoto;
	private String dtext;
}
