
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update" method="post">
    <input type="hidden" name="itemId"  value="${Projet.getIdProjet()}" placeholder="Entrer id">
    <input type="text" name="itemName"  value="${Projet.getNomProjet()}" placeholder="Entrer name">
    <input type="Date" name="itemDateDebut" value="${Projet.getDateDebutP()}" placeholder="Entrer Date Debut">
    <input type="Date" name="itemDateFin"  value="${Projet.getDateFinP()}" placeholder="Entrer Date Fin">
    <input type="Number" name="itemBudget" value="${Projet.getBudgetProjet()}" placeholder="Entrer Budget">
    <input name="itemDescription" value="${Projet.getDescriptionProjet()}" placeholder="Entrer Description">
    <button type="submit">Modifier</button>

</form>

</body>
</html>
