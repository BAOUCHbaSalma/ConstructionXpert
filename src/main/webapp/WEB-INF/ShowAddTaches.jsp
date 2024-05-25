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

      <div class="main-wrapper">
        <div class="afaire">
        <H2>A faire</H2>

            <div class="TaskF">
                <c:forEach var="tache" items="${Tache}">
                <div class="task">
                    <h2>${tache.getIdTache()}-${tache.getDescription()}</h2>
                   <div class="taskD1">
                       <div>
                           <p>${tache.getDateDebutTache()}</p>
                           <p>-----></p>
                           <p>${tache.getDateFinTache()}</p>
                       </div>
                       <button id="btn-resource" class="btn-resource">
                           <span>Resource</span><br>
                           <ion-icon id="res" name="construct-outline"></ion-icon>
                       </button>
                   </div>
                    <div class="resourceP">
                        <div class="resourceControls">
                            <button class="close"><ion-icon name="close-circle-outline"></ion-icon></button>
                        </div>

                        <div class="RP">

                            <div class="img-resource">
                                <c:forEach var="ressource" items="${tache.getRessource()}">
                                <div class="mini-img-resource ">
                                    <img src="${ressource.getImg()}" width="100%" />
                                    <p>${ressource.getNomRessource()}</p>
                                </div>
                                </c:forEach>
                            </div>

                        </div>

                    </div>
                </div>
                </c:forEach>
            </div>

        </div>

        <div class="encours">
            <H2>A faire</H2>
        </div>
        <div class="termine">
            <H2>A faire</H2>
        </div>
    </div>
</div>
</div>

<script>

    document.querySelectorAll(".task").forEach((task) => {
        const open = task.querySelector(".btn-resource");
        const close = task.querySelector(".close");
        const popup = task.querySelector(".resourceP");

        open.addEventListener("click", () => {
            popup.style.display = "block";
        });

        close.addEventListener("click", () => {
            popup.style.display = "none";
        });
    });





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
