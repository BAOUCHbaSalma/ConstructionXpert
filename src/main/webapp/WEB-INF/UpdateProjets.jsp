<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Projet</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h5>Modifier Projet</h5>
    <form action="updatep" method="post" class="mb-4">
        <input type="hidden" name="itemId" value="${Projet.getIdProjet()}">
        <div class="form-group">
            <label for="itemName">Nom du projet</label>
            <input type="text" class="form-control" id="itemName" name="itemName" value="${Projet.getNomProjet()}" placeholder="Entrer nom">
        </div>
        <div class="form-group">
            <label for="itemDateDebut">Date de début</label>
            <input type="date" class="form-control" id="itemDateDebut" name="itemDateDebut" value="${Projet.getDateDebutP()}">
        </div>
        <div class="form-group">
            <label for="itemDateFin">Date de fin</label>
            <input type="date" class="form-control" id="itemDateFin" name="itemDateFin" value="${Projet.getDateFinP()}">
        </div>
        <div class="form-group">
            <label for="itemBudget">Budget</label>
            <input type="number" class="form-control" id="itemBudget" name="itemBudget" value="${Projet.getBudgetProjet()}" placeholder="Entrer budget">
        </div>
        <div class="form-group">
            <label for="itemDescription">Description</label>
            <textarea class="form-control" id="itemDescription" name="itemDescription" placeholder="Entrer description">${Projet.getDescriptionProjet()}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>



<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
