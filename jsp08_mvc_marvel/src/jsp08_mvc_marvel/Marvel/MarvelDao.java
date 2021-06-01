package jsp08_mvc_marvel.Marvel;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import jsp08_mvc_marvel.db.MyConnector;

public class MarvelDao {
	private static MarvelDao instance = new MarvelDao();
	
	private MarvelDao() {}
	
	public static MarvelDao getInstance() {
		return instance;
	}
	
	
	public void movieInsert(MarvelDto marvelDto) {
		String sql = "insert into marvel values(?,?,?,?,?,?,?)";
		
		try(PreparedStatement pst = MyConnector.getConnection().prepareStatement(sql)){
			pst.setInt(1, marvelDto.getmarvelId());
			pst.setString(2, marvelDto.getTitle());
			pst.setString(3, marvelDto.getTitleEng());
			pst.setDate(4, Date.valueOf(marvelDto.getReleaseDate()));
			pst.setLong(5, marvelDto.getWorldBoxOffice());
			pst.setTimestamp(6, Timestamp.valueOf(marvelDto.getWriteDate()));
			pst.setTimestamp(7, Timestamp.valueOf(marvelDto.getUpdateDate()));
			
			pst.executeUpdate();
			System.out.println("쿼리 실행 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<MarvelDto> getMarvelList(int firstRow) {
		String sql = "select * from marvel limit ?,5";
		List<MarvelDto> marvelList = new ArrayList<MarvelDto>();
		try(PreparedStatement pst = MyConnector.getConnection().prepareStatement(sql)){
			pst.setInt(1,firstRow);
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					marvelList.add(new MarvelDto(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getDate(4).toLocalDate(),
							rs.getLong(5),
							rs.getTimestamp(6).toLocalDateTime(),
							rs.getTimestamp(7).toLocalDateTime()));
				}
				return marvelList;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int getPageNumber() {
		String sql = "select count(*) from marvel";
		try(ResultSet rs = MyConnector.getConnection().prepareStatement(sql).executeQuery()){
			rs.next();
			int count = rs.getInt(1);
			int result = (int)Math.ceil(count/5.0);
			return result;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}

	public void updateByMarvelId(Connection conn, MarvelDto marvelDto) throws SQLException {
		String sql = "update marvel set title=?, titleEng=?, release_date=?, world_box_office=?, update_date=? where marvel_id=?";	
	try(PreparedStatement pst = conn.prepareStatement(sql)){
		pst.setString(1, marvelDto.getTitle());
		pst.setString(2, marvelDto.getTitleEng());
		pst.setDate(3, Date.valueOf(marvelDto.getReleaseDate()));
		pst.setLong(4, marvelDto.getWorldBoxOffice());
		pst.setTimestamp(5,Timestamp.valueOf(LocalDateTime.now()));
		pst.setInt(6, marvelDto.getmarvelId());
		
		pst.executeUpdate();
	}
	
	
	
	
	}

	public MarvelDto selectWithId(Connection conn, int marvelId) throws SQLException {
		String sql = "select * from marvel where marvel_id=?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, marvelId);
			
			try(ResultSet rs = pst.executeQuery()){
				rs.next();
				MarvelDto marvelDto = new MarvelDto(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDate(4).toLocalDate(),
						rs.getLong(5),
						rs.getTimestamp(6).toLocalDateTime(),
						rs.getTimestamp(7).toLocalDateTime());
				return marvelDto;
			}
		}
	}

	public void delete(Connection conn, int marvelId) throws SQLException {
		String sql = "delete from marvel where marvel_id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, marvelId);
			
			pst.executeUpdate();
		}
	}
	
	
	
	
}
