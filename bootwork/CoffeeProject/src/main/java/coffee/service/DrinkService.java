package coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coffee.dto.DrinkDto;
import coffee.mapper.DrinkMapperInter;

@Service
public class DrinkService {
	@Autowired
	DrinkMapperInter drinkInter;
	
	public List<DrinkDto> dlist()
	{
		return drinkInter.dlist();
	}
	
	public List<DrinkDto> getdata(String dname)
	{
		return drinkInter.getdata(dname);
	}
}
