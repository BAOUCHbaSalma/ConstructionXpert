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
        <div class="topbarP">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>

            <div class="searchP">

            </div>

            <div class="profile">

            </div>
        </div>
    <section class="sectionAdd">
        <button class="Add btn btn-outline-primary">Add Project</button>
        <div class="generalForm">
            <button class="close-add"><ion-icon name="close-circle-outline"></ion-icon></button>
            <form action="add" method="post" class="mb-4">
                <input type="hidden" name="itemId">
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
                    <input type="date" class="form-control" id="itemDateFin" name="itemDateFin" >
                </div>
                <div class="form-group">
                    <label for="itemBudget">Budget</label>
                    <input type="number" class="form-control" id="itemBudget" name="itemBudget"  placeholder="Entrer budget">
                </div>
                <div class="form-group">
                    <label for="itemDescription">Description</label>
                    <textarea class="form-control" id="itemDescription" name="itemDescription" placeholder="Entrer description"></textarea>
                </div>
                <div class="form-group">
                    <label for="itemImg">Image</label>
                    <input type="text" class="form-control" id="itemImg" name="itemImg" value="${Projet.getImg()}" placeholder="Entrer lien image">
                </div>
                <button type="submit" class="btn btn-primary">Ajouter</button>
            </form>
        </div>
    </section>
        <div class="p-4 d-flex" style="width: 90%; flex-wrap: wrap; gap: 30px; margin-left:30px">
            <c:forEach var="Projet" items="${Projets}">
                <div class="card card1">
                    <img style="height: 200px" src="${Projet.getImg()}" class="card-img-top img">
        <div class="card-body">
            <h5 class="card-title">${Projet.getNomProjet()}</h5>
            <p class="card-text">${Projet.getDescriptionProjet()}</p>
        </div>
        <ul class="list-group-flush">
            <li class="list-group-item">${Projet.getDateDebutP()}</li>
            <li class="list-group-item">${Projet.getDateFinP()}</li>
            <li class="list-group-item">${Projet.getBudgetProjet()}</li>
        </ul>
        <div class="All-icons">
            <a href="DeleteProjet?id=${Projet.getIdProjet()}" class="lien1"><ion-icon name="trash-outline"></ion-icon></a>
            <a class="lien2"><ion-icon name="create-outline"></ion-icon></a>
            <a href="ShowTachesProjet?id=${Projet.getIdProjet()}" class="lien4"><ion-icon name="eye-outline"></ion-icon></a>
        </div>
             <div class="modifierSection">

                 <h3 class="stop"><ion-icon id="stop" name="close-circle-outline"></ion-icon></h3>
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
                         <div class="form-group">
                             <label for="itemImg">Image</label>
                             <input type="text" class="form-control" id="itemImg" name="itemImg" value="${Projet.getImg()}" placeholder="Entrer lien image">
                         </div>
                         <button type="submit" class="btn btn-primary">Modifier</button>
                     </form>
             </div>
    </div>
</c:forEach>
</div>

    </div>
    </div>
<script>
    document.querySelectorAll(".card1").forEach((card) => {
        const allIcons = card.querySelector(".All-icons");
        let isExpanded = false;

        card.addEventListener("mouseenter", () => {
            if (!isExpanded) {
                allIcons.style.transition = ".6s";
                allIcons.style.height = "50px";
                isExpanded = true;
            }
        });

        card.addEventListener("mouseleave", () => {
            if (isExpanded) {
                allIcons.style.transition = ".6s";
                allIcons.style.height = "0px";
                isExpanded = false;
            }
        });
    });

    document.querySelectorAll(".card1").forEach((card) => {
        const open = card.querySelector(".lien2");
        const close = card.querySelector(".stop");
        const popup = card.querySelector(".modifierSection");

        open.addEventListener("click", () => {
            popup.style.display = "block";
        });

        close.addEventListener("click", () => {
            popup.style.display = "none";
        });
    });
    document.querySelector(".Add").addEventListener("click",()=>{
        document.querySelector(".generalForm").style.display = "flex";
    })
    document.querySelector(".close-add").addEventListener("click",()=>{
        document.querySelector(".generalForm").style.display = "none";
    })

    let toggle = document.querySelector(".toggle");
    let navigation = document.querySelector(".sideBar");
    let main = document.querySelector(".main");

    toggle.onclick = function () {
        navigation.classList.toggle("active");
        main.classList.toggle("active");
    };

</script>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
