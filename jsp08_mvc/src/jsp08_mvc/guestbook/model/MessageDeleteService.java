package jsp08_mvc.guestbook.model;

import jsp08_mvc.guestbook.db.MyConnector;

import java.sql.Connection;
import java.sql.SQLException;

public class MessageDeleteService {

	private MessageDao messageDao;
	
	public MessageDeleteService() {
		messageDao = MessageDao.getInstance();
	}
	
	public boolean messageDelete(int messageId) {
		try(Connection conn = MyConnector.getConnection()){
			messageDao.delete(conn,messageId);
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return false;
		}
	}
	
	
	
}
