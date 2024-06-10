package coffee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coffee.dto.OrderDto;
import coffee.mapper.OrderMapperInter;

@Service
public class OrderService {
	@Autowired
	private OrderMapperInter orderInter;
	
	public void insertorder(OrderDto dto)
	{
		orderInter.insertorder(dto);
	}
	
}
