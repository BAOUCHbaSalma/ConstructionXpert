<%--
  Created by IntelliJ IDEA.
  User: selma
  Date: 21/05/2024
  Time: 09:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="UpdateTache" method="post">
    <input type="hidden" name="idTache"  value="${Tache.getIdTache()}" placeholder="Entrer id">
    <input type="text" name="descriptionTache"  value="${Tache.getDescription()}" placeholder="Entrer Description">
    <input type="Date" name="DateDebutTache" value="${Tache.getDateDebutTache()}" placeholder="Entrer Date Debut">
    <input type="Date" name="DateFinTache"  value="${Tache.getDateFinTache()}" placeholder="Entrer Date Fin">
    <input type="text" name="StatutTache" value="${Tache.getStatutTache()}" placeholder="Entrer Statut Tache">
    <input type="hidden" name="idProjet"  value="${Tache.getIdProjet()}">
    <button type="submit">Modifier</button>

</form>

</body>
</html>
