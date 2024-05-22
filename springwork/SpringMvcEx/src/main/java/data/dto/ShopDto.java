package data.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor //디폴트 생성자
@AllArgsConstructor //전체를 받는 생성자
//@Setter
//@Getter
//@ToString //toString으로 읽기
@Data //Setter + Getter + ToString
public class ShopDto {
	private String sang;
	private String photo;
	private int price;
	private int su;
}
