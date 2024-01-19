<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="eheio.ma.dao.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Medino</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

    <!-- CSS Files -->
    <link rel="stylesheet" href="assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="assets/css/jquery.datetimepicker.min.css">
    <link rel="stylesheet" href="assets/css/linearicons.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/styleCal.css">
    
</head>
<body>
    <!-- Preloader Starts -->
    <div class="preloader">
        <div class="spinner"></div>
    </div>
    <!-- Preloader End -->

    <!-- Header Area Starts -->
    <header class="header-area">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 d-md-flex">
                        <h6 class="mr-3"><span class="mr-2"><i class="fa fa-mobile"></i></span> Appelez-nous maintenant ! 05 63 15 92 65</h6>
							<h6 class="mr-3"><span class="mr-2"><i class="fa fa-envelope-o"></i></span>ConsultationFacile@gmail.com</h6>
							<h6><span class="mr-2"><i class="fa fa-map-marker"></i></span> Trouvez notre emplacement</h6>
                    </div>
                    <div class="col-lg-3">
                        <div class="social-links">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="header" id="home">
            <div class="container">
                <div class="row align-items-center justify-content-between d-flex">
                <div id="logo">
                    <a href="index.html"><img src="assets/images/logo/logo.png" alt="" title="" /></a>
                </div>
                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="index.jsp">Home</a></li>
                        <li><a href="departements.jsp">departments</a></li>
                        <li><a href="about.jsp">about us</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="login.jsp">Assistance</a></li>			          				          
                    </ul>
                </nav><!-- #nav-menu-container -->		    		
                </div>
            </div>
        </div>
    </header>
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Date of Appointment</th>
            <th>Message</th>
        </tr>
       <%
    List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
    if(appointments != null) {
        for (Appointment appointment : appointments) {
            out.println("<tr><td>" + appointment.getFirstName() + "</td><td>" + appointment.getLastName() + "</td><td>" + appointment.getEmail() + "</td><td>" + appointment.getPhone() + "</td><td>" + appointment.getDateRdv() + "</td><td>" + appointment.getMessage() + "</td></tr>");
        }
    } else {
        out.println("<tr><td colspan='6'>Aucun rendez-vous disponible.</td></tr>");
    }
%>

    </table>

    <script>
        function confirmAppointment(appointmentId) {
            // JavaScript code to handle the appointment confirmation
            // This could involve making an AJAX request or redirecting to another servlet
        }
    </script>
    <style>
    body {
    font-family: Arial, sans-serif; /* Use a simple, readable font */
    background-color: #f4f4f4; /* Light grey background */
    padding: 20px; /* Some padding around the content */
}

h2 {
	margin-bottom:20% !important;
    color: #333; /* Dark grey color for the heading */
    text-align: center; /* Center align the heading */
}

table {
	margin-top:10% !important;
    width: 100%; /* Full width */
    border-collapse: collapse; /* Collapse borders */
    margin-top: 20px; /* Space above the table */
}

table, th, td {
    border: 1px solid #ddd; /* Light grey border */
}

th, td {
    text-align: left; /* Align text to the left */
    padding: 8px; /* Padding inside cells */
}

th {
    background-color: #38a4ff; /* Green background for headers */
    color: white; /* White text for headers */
}

tr:nth-child(even) {
    background-color: #f2f2f2; /* Zebra striping for rows */
}

button {
    background-color: #4CAF50; /* Green background for buttons */
    color: white; /* White text for buttons */
    border: none; /* No border */
    padding: 10px 15px; /* Padding inside the button */
    text-align: center; /* Center the text */
    text-decoration: none; /* No underline on text */
    display: inline-block; /* Allow setting dimensions */
    font-size: 16px; /* Medium font size */
    margin: 4px 2px; /* Some margin around the button */
    cursor: pointer; /* Pointer cursor on hover */
    border-radius: 4px; /* Slightly rounded corners */
}

button:hover {
    background-color: #45a049; /* Darker green on hover */
}
    </style>
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="assets/js/vendor/bootstrap-4.1.3.min.js"></script>
    <script src="assets/js/vendor/wow.min.js"></script>
    <script src="assets/js/vendor/owl-carousel.min.js"></script>
    <script src="assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
    <script src="assets/js/vendor/jquery.nice-select.min.js"></script>
    <script src="assets/js/vendor/superfish.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>