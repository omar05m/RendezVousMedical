package eheio.ma.dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.annotation.WebServlet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/appointmentList")
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
            String url = "jdbc:mysql://localhost:3306/gestiondb"; // Update with your database URL
            String user = "root"; // Update with your database username
            String password = ""; // Update with your database password
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
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
            if (rs != null) try { rs.close(); } catch (SQLException e) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
            if (conn != null) try { conn.close(); } catch (SQLException e) {}
        }

        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("/assistance.jsp").forward(request, response);
    }
}
