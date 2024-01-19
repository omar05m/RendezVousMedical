package eheio.ma.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import eheio.ma.model.Patient;

public class PatientDao {
	 public Patient patient;
	
	 private connectionDB databaseConnection;

	 
	    public boolean insertPatient(Patient patient) {
	        Connection connection = null;
	        PreparedStatement preparedStatement = null;
	        
	        try {
	            connection = connectionDB.getConnection();
	            String sql = "INSERT INTO `patient` (`Nom`, `Prenom`, `Email`, `Password`, `Numero_de_Telephone`, `Date_de_Naissance`, `Message`) VALUES (?, ?, ?, ?, ?, ?, ?)";
	            preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, patient.getNom());
	            preparedStatement.setString(2, patient.getPrenom());
	            preparedStatement.setString(3, patient.getEmail());
	            preparedStatement.setString(4, patient.getPassword());
	            preparedStatement.setString(5, patient.getTelephone());
	            preparedStatement.setDate(6, new java.sql.Date(patient.getDateNaissance().getTime()));
	            preparedStatement.setString(7, patient.getMessage());

	            int rowsAffected = preparedStatement.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        } finally {
	            try {
	                if (preparedStatement != null) {
	                    preparedStatement.close();
	                }
	                if (connection != null) {
	                    connection.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }	
}
