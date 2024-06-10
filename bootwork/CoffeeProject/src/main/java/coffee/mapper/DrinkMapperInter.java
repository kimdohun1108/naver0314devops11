package coffee.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import coffee.dto.DrinkDto;
import coffee.dto.OrderDto;

@Mapper
public interface DrinkMapperInter {
	@Select("select * from coffeedrink")
	public List<DrinkDto> dlist();
	@Select("select * from coffeedrink where dname=#{dname}")
	public List<DrinkDto> getdata(String dname);
}
