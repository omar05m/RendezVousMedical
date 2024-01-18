package eheio.ma.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RendezVousDao {
	   
	
	public static boolean isTimeSlotReserved(String day, String time) {
	        String query = "SELECT COUNT(*) FROM appointments WHERE day = ? AND time = ?";

	        try (Connection conn = connectionDB.getConnection();
	             PreparedStatement pstmt = conn.prepareStatement(query)) {

	            pstmt.setString(1, day);
	            pstmt.setString(2, time);

	            try (ResultSet rs = pstmt.executeQuery()) {
	                if (rs.next()) {
	                    return rs.getInt(1) > 0;
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace(); 
	        } finally {
	            connectionDB.closeConnection(); 
	        }

	        return false;
	    }
}
