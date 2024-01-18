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
	            String sql = "INSERT INTO patient (nom, prenom, email, date_naissance, telephone, type_consultation) VALUES (?, ?, ?, ?, ?, ?)";
	            preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, patient.getNom());
	            preparedStatement.setString(2, patient.getPrenom());
	            preparedStatement.setString(3, patient.getEmail());
	            preparedStatement.setDate(4, new java.sql.Date(patient.getDateNaissance().getTime()));
	            preparedStatement.setString(5, patient.getTelephone());
	            preparedStatement.setString(6, patient.getTypeConsoltation());

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
