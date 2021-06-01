package jsp07_db.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnector {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String user = "root";
		String password = "mysql";
		String url = "jdbc:mysql://localhost:3306/tj_a?serverTimezone=Asia/Seoul&characterEncoding=utf-8";
		return DriverManager.getConnection(url, user, password);
	}
}
