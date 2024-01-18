package eheio.ma.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import eheio.ma.model.Assistante;
import jakarta.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Assistante assistant = new Assistante(request.getParameter("username"), request.getParameter("password"));
		String checkboxValue = request.getParameter("checked");
	    boolean isChecked = checkboxValue != null && checkboxValue.equals("true");
		if(assistant.verify(assistant)) {
			request.getRequestDispatcher("ListPatient.jsp").forward(request, response);	
			if(isChecked) {
				HttpSession session = (HttpSession) request.getSession();
				session.setAttribute("login", assistant.getLogin());
			}
		}
		
		
	}
	

}
