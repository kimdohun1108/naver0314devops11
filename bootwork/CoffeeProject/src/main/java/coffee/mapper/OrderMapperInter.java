package coffee.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import coffee.dto.OrderDto;

@Mapper
public interface OrderMapperInter {
	@Insert("insert into coffeeorder (id,dname,dprice,size,type,ordertime) values (#{id},#{dname},#{dprice},#{size},#{type},now())")
	public void insertorder(OrderDto dto);
	
}
