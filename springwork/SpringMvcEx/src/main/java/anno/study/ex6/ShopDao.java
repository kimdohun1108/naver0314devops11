package anno.study.ex6;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Component
public class ShopDao {
	
	public void insert(ShopDto dto) {
		System.out.println("데이터 추가");
		System.out.println(dto.toString());
	}
	
	public void delete(String sang){
		System.out.println(sang+"상품을 삭제했습니다");
		
	}
	
	public void update(ShopDto dto) {
		System.out.println("데이터 수정");
		System.out.println(dto);
	}
	
	public void selectAll() {
		System.out.println("전체 상품을 출력합니다");
	}
}
