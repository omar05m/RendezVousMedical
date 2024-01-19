package eheio.ma.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	            System.out.println(sql);
	            int rowsAffected = preparedStatement.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        } finally {

	        }
	    }
	    
	    public List<Patient> getAllPatients() {
	        List<Patient> patients = new ArrayList<>();
//	        Connection connection = null;
	        PreparedStatement preparedStatement = null;
	        ResultSet resultSet = null;

	        try {
	        	System.out.println("rah ydkhol bd");
	        	Connection connection = connectionDB.getConnection();
	            String sql = "SELECT * FROM patient";
	            preparedStatement = connection.prepareStatement(sql);
	            resultSet = preparedStatement.executeQuery();

	            while (resultSet.next()) {
	                Patient patient = new Patient(
	                		
	                        resultSet.getString("Nom"),
	                        resultSet.getString("Prenom"),
	                        resultSet.getString("Email"),
	                        resultSet.getString("Password"),
	                        resultSet.getString("Numero_de_Telephone"),
	                        resultSet.getDate("Date_de_Naissance"),
	                        resultSet.getString("Message")
	                        // Ajoutez d'autres attributs si nécessaire
	                );
	                System.out.println("rah ydkhol");
	                patients.add(patient);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            connectionDB.closeConnection();
	        }

	        return patients;
	    }
}
