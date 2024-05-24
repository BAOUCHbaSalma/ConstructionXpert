
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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


        <div class="cardBox">
            <div class="card">
                <div>
                    <div class="numbers"></div>
                    <div class="cardName"></div>
                </div>

                <div class="iconBx">
                    <ion-icon name=""></ion-icon>
                </div>
            </div>

            <div class="card">
                <div>
                    <div class="numbers"></div>
                    <div class="cardName"></div>
                </div>

                <div class="iconBx">
                    <ion-icon name=""></ion-icon>
                </div>
            </div>

            <div class="card">
                <div>
                    <div class="numbers"></div>
                    <div class="cardName"></div>
                </div>

                <div class="iconBx">
                    <ion-icon name=""></ion-icon>
                </div>
            </div>

            <div class="card">
                <div>
                    <div class="numbers"></div>
                    <div class="cardName"></div>
                </div>

                <div class="iconBx">
                    <ion-icon name=""></ion-icon>
                </div>
            </div>
        </div>
        <div class="details">
            <div class="Projets">
                <div class="cardHeader">
                    <h2>Projets</h2>
                    <a href="#" class="btn">Plus</a>
                </div>

                <table>
                    <thead>
                    <tr>
                        <td>Name</td>
                        <td>Description</td>
                        <td>Budget</td>
                        <td>Date Debut</td>
                        <td>Date Fin</td>
                        <td>Status</td>
                    </tr>
                    </thead>

                    <tbody>
                <c:forEach var="Projet" items="${Projets}">
                    <tr>

                        <td><a href="ShowTaches?id=${Projet.getIdProjet()}">${Projet.getNomProjet()} </a></td>
                        <td>${Projet.getDescriptionProjet()}</td>
                        <td>${Projet.getBudgetProjet()}</td>
                        <td>${Projet.getDateDebutP()}</td>
                        <td>${Projet.getDateFinP()}</td>
                        <td><span class="${Projet.getStatutTache()}">${Projet.getStatutTache()}</span></td>

                    </tr>
                </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="Taches">
                <div class="cardHeader">
                    <h2>Taches</h2>
                </div>

                <table>
        <c:forEach var="Tache" items="${Tache}">
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="assets/imgs/customer02.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4> ${Tache.getDescription()} <br> <span>${Tache.getDateDebutTache()}--->${Tache.getDateFinTache()}</span></h4>
                        </td>
                    </tr>
        </c:forEach>
                </table>
            </div>


    </div>
    </div>
</div>
<script>

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



