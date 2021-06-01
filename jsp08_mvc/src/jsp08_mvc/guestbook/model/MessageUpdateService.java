package jsp08_mvc.guestbook.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.guestbook.db.MyConnector;

public class MessageUpdateService {

private MessageDao messageDao;
	
	public MessageUpdateService() {
		messageDao = MessageDao.getInstance();
	}
	
	public boolean messageUpdate(MessageDto messageDto) {
		try(Connection conn = MyConnector.getConnection()){
		messageDao.update(conn, messageDto);
		
		return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return false;
		}
	}
	
}
