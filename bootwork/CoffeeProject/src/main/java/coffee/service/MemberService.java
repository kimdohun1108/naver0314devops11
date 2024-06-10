package coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coffee.dto.MemberDto;
import coffee.mapper.MemberMapperInter;

@Service
public class MemberService {
	@Autowired
	private MemberMapperInter memInter;
	
	public void insertMember(MemberDto dto)
	{
		memInter.insertMember(dto);
	}
	public int getidcheckcount(String searchid)
	{
		return memInter.getidcheckcount(searchid);
	}
	public int getnickcheckcount(String searchnick)
	{
		return memInter.getnickcheckcount(searchnick);
	}
	public boolean logincheck(String id,String passwd)
	{
		return memInter.logincheck(id,passwd)==1?true:false;
	}
	public void updatemember(MemberDto dto)
	{
		memInter.updatemember(dto);
	}
	public List<MemberDto> getdatabyid(String id)
	{
		return memInter.getdatabyid(id);
	}
	public int gettotalcount()
	{
		return memInter.gettotalcount();
	}
	public List<MemberDto> getallmember()
	{
		return memInter.getallmember();
	}
	public void deletemember(String id)
	{
		memInter.deletemember(id);
	}
}
