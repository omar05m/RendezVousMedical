package eheio.ma.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import eheio.ma.dao.PatientDao;
import eheio.ma.model.Patient;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RendezVous extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public PatientDao patientDao = new PatientDao();

	public RendezVous() {
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nom = request.getParameter("first_name");
		String prenom = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type_consult = request.getParameter("message");
		String uniqueCode = UUID.randomUUID().toString();
		String date_nassaice = request.getParameter("date_rdv");
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); // Define the pattern matching your date string

		try {
			Date date = formatter.parse(date_nassaice);
			Patient patient = new Patient(nom,prenom,email,uniqueCode,date,phone,type_consult);
			boolean isSaved = patientDao.insertPatient(patient);
			if(isSaved) {
				HttpSession session = request.getSession();
				session.setAttribute("uniqueCode", uniqueCode);
				request.getRequestDispatcher("salam.jsp").forward(request, response);
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public void setIdRendezVous(int int1) {
	}

}
