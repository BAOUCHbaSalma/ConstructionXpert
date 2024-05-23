<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Gestion des Tâches</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style><%@include file="style.css"%></style>
</head>
<body>
<div class="general">
  <div class="sideBar">
    <ul>

      <li>
        <a href="#">
                    <span class="icon">
                       <ion-icon name="grid-outline"></ion-icon>
                    </span>
          <span class="title">ConstructionXpert</span>
        </a>
      </li>

      <li>
        <a href="Acceuil">
                    <span class="icon">
                        <ion-icon name="home-outline"></ion-icon>
                    </span>
          <span class="title">Dashboard</span>
        </a>
      </li>
      <li>
        <a href="ShowProjets">
                    <span class="icon">
                       <ion-icon name="business-outline"></ion-icon>
                    </span>
          <span class="title">Projets</span>
        </a>
      </li>

      <li>
        <a href="ShowAllRessource">
                    <span class="icon">
                       <ion-icon name="construct-outline"></ion-icon>
                    </span>
          <span class="title">Ressources</span>
        </a>
      </li>

      <li>
        <a href="#">
                    <span class="icon">
                       <ion-icon name="help-outline"></ion-icon>
                    </span>
          <span class="title">Help</span>
        </a>
      </li>
      <li>
        <a href="#">
                    <span class="icon">
                       <ion-icon name="settings-outline"></ion-icon>
                    </span>
          <span class="title">Settings</span>
        </a>
      </li>

      <li>
        <a href="#">
                    <span class="icon">
                      <ion-icon name="log-out-outline"></ion-icon>
                    </span>
          <span class="title">Log out</span>
        </a>
      </li>

    </ul>

  </div>
  <div class="main">
  <div class="mt-5">
    <h5 class="mb-4">Liste des Tâches</h5>
    <div class="list-group">
      
      <!--<c:forEach var="Tache" items="${Tache}">
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
      </c:forEach>-->

    </div>
  </div>
</div>
</div>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
