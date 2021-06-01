package jsp08_mvc.guestbook.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.guestbook.db.MyConnector;

public class MessageSelectService {

	private MessageDao messageDao;
	
	public MessageSelectService() {
		messageDao = MessageDao.getInstance();
	}
	
	public MessageDto getMessage(int messageId) {
		try (Connection conn = MyConnector.getConnection()){
			MessageDto messageDto = messageDao.selectMessageById(conn, messageId);
			
			return messageDto;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return null;
		}
	}
}
