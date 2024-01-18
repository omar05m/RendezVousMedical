<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="eheio.ma.dao.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Weekly Appointment Calendar</title>
    <link href="assets/css/styleCal.css" rel="stylesheet" type="text/css">
    <!-- Add any additional JavaScript or CSS here -->
</head>
<body>
    <div class="calendar-container">
        <table class="calendar">
            <!-- Table headers for days and time slots -->
            <tr>
                <th>Time/Day</th>
                <th>Mon</th>
                <th>Tue</th>
                <th>Wed</th>
                <th>Thu</th>
                <th>Fri</th>
            </tr>

            <!-- Time slots -->
            <% 
            for(int hour = 9; hour < 17; hour++) {
                String[] days = {"Mon", "Tue", "Wed", "Thu", "Fri"};
                for(int part = 0; part < 2; part++) {
                    String time = hour + (part == 0 ? ":00" : ":30");
            %>
            <tr>
                <td><%= time %></td> <!-- Display time -->
                <% 
                for(String day : days) {
                    boolean isReserved = RendezVousDao.isTimeSlotReserved(day, time);
                %>
                    <td class="<%= isReserved ? "reserved" : "available" %>" onClick="<%= isReserved ? "" : "bookTimeSlot('" + day + "', '" + time + "')" %>">
                        <%= isReserved ? "Ne pas disponible" : "Disponible" %>
                    </td>
                <% 
                }
                %>
            </tr>
            <% 
                }
            } 
            %>
        </table>
    </div>

    <!-- Include JavaScript for booking functionality -->
    <script>
        function bookTimeSlot(day, time) {
            // Implement the function to handle booking.
            // This could involve sending a request to a servlet and displaying a confirmation message.
            alert("Votre rendez-vous pour " + day + " at " + time + " bientôt confirmé.");
        }
    </script>
</body>
</html>
