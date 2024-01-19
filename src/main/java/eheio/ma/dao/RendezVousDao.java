package eheio.ma.dao;
import eheio.ma.model.RendezVouss;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import eheio.ma.controller.RendezVous;

public class RendezVousDao {
	   
	
	public static boolean isTimeSlotReserved(String day, String time) {

	        String query = "SELECT COUNT(*) FROM rendezvous WHERE Date_RendezVous = ? AND Heure_RendezVous = ?";

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
	public static List<RendezVouss> getAllRendezVous() {
	    List<RendezVouss> listeRendezVous = new ArrayList<>();

	    String query = "SELECT \r\n"
	            + "    rendezvous.ID_RendezVous,\r\n"
	            + "    patient.Nom AS Nom_Patient,\r\n"
	            + "    assistante.Nom AS Nom_Assistante,\r\n"
	            + "    rendezvous.Date_RendezVous,\r\n"
	            + "    rendezvous.Heure_RendezVous,\r\n"
	            + "    rendezvous.Etat_de_RendezVous\r\n"
	            + "FROM rendezvous\r\n"
	            + "JOIN patient ON rendezvous.ID_Patient = patient.ID_Patient\r\n"
	            + "JOIN assistante ON rendezvous.ID_Assistante = assistante.ID_Assistante;\r\n";

	    try (Connection conn = connectionDB.getConnection();
	         PreparedStatement pstmt = conn.prepareStatement(query);
	         ResultSet rs = pstmt.executeQuery()) {

	        while (rs.next()) {
	            RendezVouss rendezVous = new RendezVouss();
	            rendezVous.setIdRendezVous(rs.getInt("ID_RendezVous"));
	            rendezVous.setNomPatient(rs.getString("Nom_Patient"));
	            rendezVous.setNomAssistante(rs.getString("Nom_Assistante"));
	            rendezVous.setDateRendezVous(rs.getString("Date_RendezVous"));
	            rendezVous.setHeureRendezVous(rs.getString("Heure_RendezVous"));
	            rendezVous.setEtatRendezVous(rs.getInt("Etat_de_RendezVous"));

	            listeRendezVous.add(rendezVous);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        connectionDB.closeConnection();
	    }

	    return listeRendezVous;
	}



		
	}

