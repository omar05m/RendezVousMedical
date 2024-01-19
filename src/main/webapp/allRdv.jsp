<%@ page import="java.util.List" %>
<%@ page import="eheio.ma.dao.RendezVousDao" %>
<%@ page import="eheio.ma.model.RendezVouss" %>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Rendez-vous</title>
</head>
<body>
    <h2>Liste des Rendez-vous</h2>

    <% 
    List<RendezVouss> listeRendezVous = RendezVousDao.getAllRendezVous();
    %>

    <!-- Vous pouvez personnaliser la présentation ici, par exemple en utilisant une table -->
    <table border="1">
        <tr>
            <th>ID Rendez-vous</th>
            <th>Nom Patient</th>
            <th>Nom Assistante</th>
            <th>Date Rendez-vous</th>
            <th>Heure Rendez-vous</th>
            <th>Etat Rendez-vous</th>
        </tr>

        <!-- Boucle pour afficher chaque rendez-vous dans la table -->
<% for (RendezVouss rendezVous : listeRendezVous) { %>
    <tr>
        <td><%= rendezVous.getIdRendezVous() %></td>
        <td><%= rendezVous.getNomPatient() %></td>
        <td><%= rendezVous.getNomAssistante() %></td>
        <td><%= rendezVous.getDateRendezVous() %></td>
        <td><%= rendezVous.getHeureRendezVous() %></td>
        <td><%= (rendezVous.getEtatRendezVous() == 1) ? "Valider" : "Non Valider" %></td>
        <td>
            <form action="RenezVous" method="post">
                <input type="hidden" name="idRendezVous" value="<%= rendezVous.getIdRendezVous() %>">
                <input type="submit" name="valider" value="Valider">
                <input type="submit" name="refuser" value="Refuser">
            </form>
        </td>
    </tr>
<% } %>
    </table>
</body>
</html>
