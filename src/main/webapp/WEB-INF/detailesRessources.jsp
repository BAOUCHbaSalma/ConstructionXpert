
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>

            <div class="search">
                <label>
                    <input type="text" placeholder="Search here">
                    <ion-icon name="search-outline"></ion-icon>
                </label>
            </div>

            <div class="user">
                <img src="assets/imgs/customer01.jpg" alt="">
            </div>
        </div>
        <section class="sectionAddTache">
            <button class="AddTache btn btn-outline-primary">Add Resource</button>
            <div class="generalFormTach">
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
                    <button type="submit" class="btn btn-primary">Ajouter</button>
                </form>
            </div>
        </section>

        <div class="detailsResource">
        <div class="detailsResource-wrapper">
                    <div class="imgDetails"><img src="https://s7d2.scene7.com/is/image/Caterpillar/CM20220913-88893-53ba6" /></div>
            <div class="detailsContent">
                <h1>Pelles mécaniques</h1>
                <h2>Engins de Terrassement </h2>
                <div>
                    <p><em>Quantite </em> ---> <span> 40</span></p>
                    <p><em>Fournisseur </em> ---> <span> Entreprise A</span></p>
                </div>
                <div class="detailsRessourcesControls">
                    <a class="removeDetails" ><ion-icon name="trash-outline"></ion-icon></a>
                    <a class="updateDetails"><ion-icon name="create-outline"></ion-icon></a>
                </div>
            </div>
            <div class="popupDetails">
                    <button class="close"><ion-icon name="close-circle-outline"></ion-icon></button>
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
                        <button type="submit" class="btn btn-primary">Ajouter</button>
                    </form>
            </div>
        </div>
            <div class="titre-cards">
                <h1>Ressource materiel</h1>
            </div>

            <section class="main-cards">

                <div class="card-wrapper">
                    <c:forEach var="Ressources" items="${Ressources}">
                        <div class="cardD">
                            <div>
                                <img class="card_disney" src="${Ressources.getImg()}"/>

                                </a>
                                <div class="comments1">
                                    <i class="fa-regular fa-bookmark" ></i>
                                </div>
                            </div>
                            <h1>${Ressources.getNomRessource()}</h1>



                        </div>
                    </c:forEach>
                </div>
            </section>
        </div>
        </div>
    </div>
<script>
    document.querySelector(".AddTache").addEventListener("click",()=>{
        document.querySelector(".generalFormTach").style.display = "flex";
    })
    document.querySelector(".close-add").addEventListener("click",()=>{
        document.querySelector(".generalFormTach").style.display = "none";
    })

    document.querySelector(".updateDetails").addEventListener("click",()=>{
        document.querySelector(".popupDetails").style.display = "block";
    })
    document.querySelector(".close").addEventListener("click",()=>{
        document.querySelector(".popupDetails").style.display = "none";
    })
    // Menu Toggle
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
</body>
</html>




