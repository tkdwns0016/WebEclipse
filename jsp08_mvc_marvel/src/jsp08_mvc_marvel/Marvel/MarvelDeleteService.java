package jsp08_mvc_marvel.Marvel;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc_marvel.db.MyConnector;

public class MarvelDeleteService {
	private MarvelDao marvelDao;

	public MarvelDeleteService() {
		marvelDao = MarvelDao.getInstance();
	}

	public boolean selectDelete(int marvelId) {
		try (Connection conn = MyConnector.getConnection()) {
			marvelDao.delete(conn, marvelId);

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
