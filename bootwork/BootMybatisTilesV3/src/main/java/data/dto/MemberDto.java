package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@NoArgsConstructor
@Alias("MemberDto")
@Builder
@AllArgsConstructor
@Data
public class MemberDto {
	private int num;
	private String name;
	private String myid;
	private String passwd;
	private String addr;
	private String hp;
	private String email;
	private String photo;
	private String birthday;
	private Timestamp gaipday;
	
}
