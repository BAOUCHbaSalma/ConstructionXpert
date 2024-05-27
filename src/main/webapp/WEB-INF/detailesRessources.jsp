
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
                <form action="AddRessource" method="post" class="mb-4">

                    <div class="form-group">
                        <label for="itemName">Nom </label>
                        <input type="text" class="form-control" id="itemName" name="nomRessource" placeholder="Entrer nom">
                    </div>
                    <div class="form-group">
                        <label for="itemType">Type</label>
                        <input type="text" class="form-control" id="itemType"  name="typeRessource">
                    </div>
                    <div class="form-group">
                        <label for="quantiteRessource">Quantite</label>
                        <input type="text" class="form-control"  id="quantiteRessource" name="quantiteRessource" >
                    </div>

                    <div class="form-group">
                        <label for="infoFournisseur">Fournisseur</label>
                        <input type="text" class="form-control"  id="infoFournisseur" name="infoFournisseur" >

                       <div class="form-group">
                           <label for="img">Image</label>
                           <input type="text" class="form-control" placeholder="img" id="img" name="img" >


                       </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </section>

        <div class="detailsResource">

        <div class="detailsResource-wrapper">

                    <div class="imgDetails"><img src="${ressource.getImg()}" /></div>

            <div class="detailsContent">
                <h1>${ressource.getNomRessource()}</h1>
                <h2>${ressource.getTypeRessource()}</h2>
                <div>
                    <p><em>Quantite </em> ---> <span> ${ressource.getQuantiteRoussource()}</span></p>
                    <p><em>Fournisseur </em> ---> <span> ${ressource.getInfoFournisseur()}</span></p>
                </div>
                <div class="detailsRessourcesControls">
                    <a href="DeleteRessource?id=${ressource.getIdRessource()}"><ion-icon name="trash-outline"></ion-icon></a>
                    <a class="updateDetails"><ion-icon name="create-outline"></ion-icon></a>
                </div>
            </div>
            <div class="popupDetails">
                    <button class="closeUpdate"><ion-icon name="close-circle-outline"></ion-icon></button>
                    <form action="UpdateRessourceTache" method="post" class="mb-4">
                        <div class="form-group">
                        <input type="text" name="idRessource" value="${ressource.getIdRessource()}">
                        </div>
                        <div class="form-group">
                            <label for="itemName">Nom </label>
                            <input type="text" class="form-control" id="itemName" name="nomRessource" value="${ressource.getNomRessource()}" placeholder="Entrer nom">
                        </div>
                        <div class="form-group">
                            <label for="itemType">Type</label>
                            <input type="text" class="form-control" id="itemType" value="${ressource.getTypeRessource()}" name="typeRessource">
                        </div>
                        <div class="form-group">
                            <label for="quantiteRessource">Quantite</label>
                            <input type="text" class="form-control" value="${ressource.getQuantiteRoussource()}" id="quantiteRessource" name="quantiteRessource" >
                        </div>

                        <div class="form-group">
                            <label for="infoFournisseur">Fournisseur</label>
                            <input type="text" class="form-control" value="${ressource.getInfoFournisseur()}" id="infoFournisseur" name="infoFournisseur" >

                        <div class="form-group">
                            <input type="hidden" class="form-control" value="${ressource.getIdTache()}" id="idTache" name="idTache" >
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </form>
            </div>
        </div>

            <c:forEach var="Ressources" items="${Ressources}">
                <div class="container mt-4">
                    <div class="cardd">
                        <div class="card-header">
                            <h2 class="card-title">Ressource N°: ${Ressources.getIdRessource()}</h2>
                        </div>
                        <div class="card-body">
                            <h2>${Ressources.getNomRessource()}</h2>
                            <h3>${Ressources.getTypeRessource()}</h3>
                            <h4>${Ressources.getQuantiteRoussource()}</h4>
                            <h4>${Ressources.getInfoFournisseur()}</h4>
                            <h4>${Ressources.getIdTache()}</h4>
                            <a href="UpdateRessourceTache?id=${Ressources.getIdRessource()}" class="btn btn-primary mr-2">Update</a>
                            <a href="DeleteRessource?id=${Ressources.getIdRessource()}" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
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
        document.querySelector(".popupDetails").style.display = "flex";
    })
    document.querySelector(".closeUpdate").addEventListener("click",()=>{
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




