package jsp08_mvc.guestbook.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.guestbook.db.MyConnector;

public class MessageWriteService {
	private MessageDao messageDao;
	
	public MessageWriteService() {
		messageDao = MessageDao.getInstance();
		
	}
	
	public boolean writeMessage(MessageDto messageDto) {
		try(Connection conn = MyConnector.getConnection()){
			
			//Dao를 이용하여 DB에 insert해준다.
			messageDao.insert(conn, messageDto);
			
			return true;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
