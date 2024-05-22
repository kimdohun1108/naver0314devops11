package anno.study.ex6;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@RequiredArgsConstructor
@Component("shopCont")
@Data
public class ShopController {
	@NonNull
	ShopDao dao;
	
	public void insert(String sang, int su, int dan) {
		ShopDto dto = new ShopDto(sang,su,dan);
		dao.insert(dto);
	}
	@NonNull
	public void delete(String sang) {
		dao.delete(sang);
	}
	
	public void update(String sang, int su, int dan) {
		ShopDto dto = new ShopDto();
		dto.setSang(sang);
		dto.setSu(su);
		dto.setDan(dan);
		dao.update(dto);
		
		dao.selectAll();
	}
}
