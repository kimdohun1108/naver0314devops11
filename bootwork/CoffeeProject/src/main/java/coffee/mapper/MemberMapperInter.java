package coffee.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import coffee.dto.MemberDto;

@Mapper
public interface MemberMapperInter {
	@Insert("insert into coffeemember (name,id,passwd,nick,hp) values (#{name},#{id},#{passwd},#{nick},#{hp})")
	public void insertMember(MemberDto dto);
	@Select("select count(*) from coffeemember where id=#{searchid}")
	public int getidcheckcount(String searchid);
	@Select("select count(*) from coffeemember where nick=#{searchnick}")
	public int getnickcheckcount(String searchnick);
	@Select("select count(*) from coffeemember where id=#{id} and passwd=#{passwd}")
	public int logincheck(String id,String passwd);
	@Select("select * from coffeemember where num=#{num}")
	public MemberDto getdate(int num);
	@Update("update coffeemember set name=#{name},id=#{id},passwd=#{passwd},nick=#{nick},hp=#{hp} where num=#{num}")
	public void updatemember(MemberDto dto);
	@Select("select * from coffeemember where id=#{id}")
	public MemberDto getdatabyid(String id);
	
}
