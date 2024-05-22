package anno.study.ex6;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Component
public class ShopDao {
	
	public void insert(ShopDto dto) {
		System.out.println("������ �߰�");
		System.out.println(dto.toString());
	}
	
	public void delete(String sang){
		System.out.println(sang+"��ǰ�� �����߽��ϴ�");
		
	}
	
	public void update(ShopDto dto) {
		System.out.println("������ ����");
		System.out.println(dto);
	}
	
	public void selectAll() {
		System.out.println("��ü ��ǰ�� ����մϴ�");
	}
}