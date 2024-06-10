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
@Alias("MemberDto")
public class MemberDto {
	private int num;
	private String name;
	private String id;
	private String passwd;
	private String nick;
	private String hp;
}
