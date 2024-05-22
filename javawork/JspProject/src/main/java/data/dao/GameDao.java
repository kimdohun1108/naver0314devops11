package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;


import data.dto.GameDto;
import db.common.MySqlConnect;

public class GameDao {
	MySqlConnect db = new MySqlConnect();
	
	//추가
	public void insertGame(GameDto dto)
	{
		String sql = """
				insert into mygame (name,age,gender,photo,count)
				values (?,?,?,?,?)
				""";
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			//db읽기
			pstmt = conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAge());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getPhoto());
			pstmt.setInt(5, dto.getCount());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//목록출력
	public List<GameDto> getAllGame()
	{
		List<GameDto> list = new Vector<GameDto>();
		String sql = """
				select * from mygame order by num
				""";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				GameDto dto = new GameDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getString("age"));
				dto.setGender(rs.getString("gender"));
				dto.setPhoto(rs.getString("photo"));
				dto.setCount(rs.getInt("count"));
				//list에 추가
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	//디테일
	public GameDto getDate(int num)
	{
		GameDto dto = new GameDto();
		String sql = """
				select * from mygame where num=?
				""";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {	
			pstmt = conn.prepareStatement(sql);
			//바인딩
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getString("age"));
				dto.setGender(rs.getString("gender"));
				dto.setPhoto(rs.getString("photo"));
				dto.setCount(rs.getInt("count"));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	
	//삭제 
	public void deleteGame(int num)
	{
		String sql = """
				delete from mygame where num=?
				""";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//바인딩
			pstmt.setInt(1, num);
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//수정
	public void updateGame(GameDto dto)
	{
		String sql = """
				update mygame set name=?,age=?,gender=?,photo=?,count=?
				where num=?
				""";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAge());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getPhoto());
			pstmt.setInt(5, dto.getCount());
			pstmt.setInt(6, dto.getNum());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}
