<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Gestion des Tâches</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h5 class="mb-4">Ajouter Tâche</h5>
  <form action="ShowTaches" method="post" class="mb-4">
    <div class="form-group">
      <label for="descriptionTache">Description</label>
      <input type="text" class="form-control" id="descriptionTache" name="descriptionTache" placeholder="Entrer description">
    </div>
    <div class="form-group">
      <label for="DateDebutTache">Date de début</label>
      <input type="date" class="form-control" id="DateDebutTache" name="DateDebutTache">
    </div>
    <div class="form-group">
      <label for="DateFinTache">Date de fin</label>
      <input type="date" class="form-control" id="DateFinTache" name="DateFinTache">
    </div>
    <div class="form-group">
      <label for="StatutTache">Statut</label>
      <input type="text" class="form-control" id="StatutTache" name="StatutTache" placeholder="Entrer statut">
    </div>
    <input type="hidden" name="id" value="${idProjet}">
    <button type="submit" class="btn btn-primary">Ajouter</button>
  </form>

  <div class="mt-5">
    <h5 class="mb-4">Liste des Tâches</h5>
    <div class="list-group">
      <c:forEach var="Tache" items="${Tache}">
        <div class="list-group-item mb-2">
          <h5 class="mb-1">Tâche N°: ${Tache.getIdTache()}</h5>
          <p class="mb-1">Description: ${Tache.getDescription()}</p>
          <p class="mb-1">Date de début: ${Tache.getDateDebutTache()}</p>
          <p class="mb-1">Date de fin: ${Tache.getDateFinTache()}</p>
          <p class="mb-1">Statut: ${Tache.getStatutTache()}</p>
          <p class="mb-1">Projet N°: ${Tache.getIdProjet()}</p>
          <div class="d-flex justify-content-start">
            <a href="UpdateTache?id=${Tache.getIdTache()}" class="btn btn-warning btn-sm mr-2">Modifier</a>
            <a href="DeleteTache?id=${Tache.getIdTache()}" class="btn btn-danger btn-sm mr-2">Supprimer</a>
            <a href="ShowRessourceTache?id=${Tache.getIdTache()}" class="btn btn-info btn-sm mr-2">Afficher Ressources</a>
            <a href="ShowRessource?id=${Tache.getIdTache()}" class="btn btn-success btn-sm">Ajouter Ressources</a>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
