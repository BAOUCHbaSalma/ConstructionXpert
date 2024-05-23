<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Projets</title>
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

    <div class="main" style="width: 100%">

<div class="p-4 d-flex" style="width: 90%; flex-wrap: wrap; gap: 50px">
<c:forEach var="Projet" items="${Projets}">
    <div class="card card1" style="width: 20rem;">
        <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" role="img"
             aria-label="Placeholder: Image cap" preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>Placeholder</title><rect width="100%" height="100%" fill="#868e96">

        </rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em"><img src=""></text></svg>
        <div class="card-body">
            <h5 class="card-title">${Projet.getNomProjet()}</h5>
            <p class="card-text">${Projet.getDescriptionProjet()}</p>
        </div>
        <ul class="list-group-flush">
            <li class="list-group-item">${Projet.getDateDebutP()}</li>
            <li class="list-group-item">${Projet.getDateFinP()}</li>
            <li class="list-group-item">${Projet.getBudgetProjet()}</li>
        </ul>
        <a href="${Projet.getIdProjet()}" id="lien1"><ion-icon name="trash-outline"></ion-icon>Remove</a>
        <a href="updatep?id=${Projet.getIdProjet()}" id="lien2"><ion-icon name="trash-outline"></ion-icon> Update</a>
    <a href="ShowTachesProjet?id=${Projet.getIdProjet()}" id="lien3"><ion-icon name="trash-outline"></ion-icon>Show Tasks</a>
    <a href="ShowTaches?id=${Projet.getIdProjet()}" id="lien4"><ion-icon name="trash-outline"></ion-icon>Add Taches</a>
    </div>
</c:forEach>


   <!-- <c:forEach var="Projet" items="${Projets}">
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
    </c:forEach> -->
</div>

    </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
