package jsp07_db.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jsp07_db.db.MyConnector;

public class MessageDao {
//인스턴트 만들어주기
	private static MessageDao instance = new MessageDao();

//객체 생성 막기
	private MessageDao() {}

//인스턴스를 사용하여 출입구 만들어주기
	public static MessageDao getInstance() {
		return instance;
	}

	//데이터베이스에 삽입
	public void insert(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "insert into guestbook values(?,?,?,?)";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, messageDto.getMessageId());
			pst.setString(2, messageDto.getGuestName());
			pst.setString(3, messageDto.getMessage());
			pst.setTimestamp(4, messageDto.getWriteDate());
			pst.executeUpdate();
		}
	}
	
	
	public List<MessageDto> selectAll() throws ClassNotFoundException, SQLException{
		String sql = "select * from guestbook";
		List<MessageDto> messageList = new ArrayList<MessageDto>();
		try(PreparedStatement pst = MyConnector.getConnection().prepareStatement(sql);
				ResultSet rs = pst.executeQuery()){
			while(rs.next()) {
				MessageDto messageDto = new MessageDto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getTimestamp(4));
				messageList.add(messageDto);
			}
			return messageList;
		}
	}
	
	public MessageDto selectWithId(int id) throws ClassNotFoundException, SQLException{
		String sql = "select * from guestbook where message_id = ?";
		
		try(PreparedStatement pst = MyConnector.getConnection().prepareStatement(sql)){
			pst.setInt(1, id);
			try(ResultSet rs = pst.executeQuery()){
				MessageDto messageDto = new MessageDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getTimestamp(4));	
				return messageDto;
				
			}
		}
	}		
}
