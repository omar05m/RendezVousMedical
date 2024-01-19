package eheio.ma.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import eheio.ma.dao.connectionDB;


public class RendezVous extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RendezVous() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dateRdv = request.getParameter("date_rdv");
        String message = request.getParameter("message");

        // Assuming you have a method to get the DB connection
        Connection conn = connectionDB.getConnection();

        if (conn != null) {
            try {
                // Prepare SQL statement to insert the appointment
                String sql = "INSERT INTO patient (Nom, Prenom, Email, Numero_de_Telephone,Message, Date_de_rdv) VALUES (?, ?, ?, ?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, firstName);
                    stmt.setString(2, lastName);
                    stmt.setString(3, email);
                    stmt.setString(4, phone);
                    stmt.setString(5, dateRdv);
                    stmt.setString(6, message);

                    // Execute the statement
                    stmt.executeUpdate();
                }
            } catch (SQLException e) {
                e.printStackTrace(); // Replace with better error handling
            } finally {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace(); // Replace with better error handling
                }
            }
        }

        // Redirect to a success page or back to the calendar
        response.sendRedirect("appointment-success.jsp"); // Redirect to a success page
    }
}
