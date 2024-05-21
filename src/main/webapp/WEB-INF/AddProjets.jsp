<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Projets</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h5>Ajouter Projet</h5>
    <form action="add" method="post" class="mb-4">
        <div class="form-group">
            <label for="itemName">Nom du projet</label>
            <input type="text" class="form-control" id="itemName" name="itemName" placeholder="Entrer nom">
        </div>
        <div class="form-group">
            <label for="itemDateDebut">Date de début</label>
            <input type="date" class="form-control" id="itemDateDebut" name="itemDateDebut">
        </div>
        <div class="form-group">
            <label for="itemDateFin">Date de fin</label>
            <input type="date" class="form-control" id="itemDateFin" name="itemDateFin">
        </div>
        <div class="form-group">
            <label for="itemBudget">Budget</label>
            <input type="number" class="form-control" id="itemBudget" name="itemBudget" placeholder="Entrer budget">
        </div>
        <div class="form-group">
            <label for="itemDescription">Description</label>
            <textarea class="form-control" id="itemDescription" name="itemDescription" placeholder="Entrer description"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>

<div class="container">
    <c:forEach var="Projet" items="${Projets}">
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">Projet N°: ${Projet.getIdProjet()}</h5>
                <h5 class="card-title">${Projet.getNomProjet()}</h5>
                <p class="card-text">${Projet.getDescriptionProjet()}</p>
                <p class="card-text"><small class="text-muted">Date de début: ${Projet.getDateDebutP()}</small></p>
                <p class="card-text"><small class="text-muted">Date de fin: ${Projet.getDateFinP()}</small></p>
                <p class="card-text"><small class="text-muted">Budget: ${Projet.getBudgetProjet()}</small></p>
                <a href="updatep?id=${Projet.getIdProjet()}" class="btn btn-warning">Modifier</a>
                <a href="DeleteProjet?id=${Projet.getIdProjet()}" class="btn btn-danger">Supprimer</a>
                <a href="ShowTaches?id=${Projet.getIdProjet()}" class="btn btn-info">Voir Tâches</a>
                <a href="ShowTaches?id=${Projet.getIdProjet()}" class="btn btn-success">Ajouter Tâche</a>
            </div>
        </div>
    </c:forEach>
</div>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
