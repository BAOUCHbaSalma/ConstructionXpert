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


                <div class="card-content">
                    <h2></h2>
                    <h3></h3>
                    <h3></h3>
                </div>

            </div>
        </c:forEach>
    </div>
</section>
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


                        <div class="card-content">
                            <h2></h2>
                            <h3></h3>
                            <h3></h3>
                        </div>

                    </div>
                </c:forEach>
            </div>
        </section>
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


                        <div class="card-content">
                            <h2></h2>
                            <h3></h3>
                            <h3></h3>
                        </div>

                    </div>
                </c:forEach>
            </div>
        </section>
    </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
