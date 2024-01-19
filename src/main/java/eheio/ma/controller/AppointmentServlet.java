package eheio.ma.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eheio.ma.dao.connectionDB;
import eheio.ma.model.Appointment;


public class AppointmentServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Appointment> appointments = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = connectionDB.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM patient"; // Update with your SQL query
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String firstName = rs.getString("Nom");
                String lastName = rs.getString("Prenom");
                String email = rs.getString("Email");
                String phone = rs.getString("Numero_de_Telephone");
                String message = rs.getString("Message");
                String dateRdv = rs.getString("Date_rdv");

                appointments.add(new Appointment(firstName, lastName, email, phone, dateRdv, message));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
          connectionDB.closeConnection();
        }

        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("/assistance.jsp").forward(request, response);
    }
}
