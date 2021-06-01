package jsp08_mvc_marvel.Marvel;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc_marvel.db.MyConnector;

public class MarvelUpdateService {
	private MarvelDao marvelDao;
	
	public MarvelUpdateService() {
		marvelDao = MarvelDao.getInstance();
	}

	public MarvelDto select(int marvelId) throws ClassNotFoundException, SQLException {
		try(Connection conn = MyConnector.getConnection()){
			return marvelDao.selectWithId(conn,marvelId);
			}
	}
	
	
	
	public boolean update(MarvelDto marvelDto) {
		try(Connection conn = MyConnector.getConnection()){
		marvelDao.updateByMarvelId(conn, marvelDto);
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
