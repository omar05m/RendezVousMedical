package eheio.ma.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionDB {
	 	
	    private static Connection jdbcConnection;

	    public static Connection getConnection() {
	        if (jdbcConnection == null) {
	            try {
	                Class.forName("com.mysql.jdbc.Driver");
	                jdbcConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionDB", "root", "");
	            } catch (SQLException | ClassNotFoundException e) {
	                e.printStackTrace();
	            }
	        }
	        return jdbcConnection;
	    }

	    public static void closeConnection() {
	        if (jdbcConnection != null) {
	            try {
	                jdbcConnection.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

}
