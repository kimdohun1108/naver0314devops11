package coffee.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Alias("OrderDto")
public class OrderDto {
	private int num;
	private String id;
	private String dname;
	private String dprice;
	private String size;
	private String type;
	private Timestamp ordertime;
}
