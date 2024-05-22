
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap");
    *{
        font-family: "Ubuntu", sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        text-decoration: none;
    }
    :root {
        --blue: #2a2185;
        --white: #fff;
        --gray: #f5f5f5;
        --black1: #222;
        --black2: #999;
    }
    body {
        min-height: 100vh;
        overflow-x: hidden;
    }
    .container{
            position: relative;
            width: 100%;
    }
    .sideBar {
        position: fixed;
        width: 300px;
        height: 100%;
        background: var(--blue);
        border-left: 10px solid var(--blue);
        transition: 0.5s;
        overflow: hidden;
    }

    .sideBar ul {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
    }
    .sideBar ul li {
        position: relative;
        width: 100%;
        list-style: none;
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
    }
    .sideBar ul li:nth-child(1) {
        margin-bottom: 40px;
        pointer-events: none;
    }
    .sideBar ul li a {
        position: relative;

        width: 100%;
        display: flex;
        text-decoration: none;
        color: var(--white);
    }
    .sideBar ul li:hover a{
        color: var(--blue);
    }
    .sideBar ul li:hover {
        background-color: var(--white);
    }
    .sideBar ul li a .icon {
        position: relative;
        display: block;
        min-width: 60px;
        height: 60px;
        line-height: 75px;
        text-align: center;
        align-content: center;
    }

    .sideBar ul li a .icon ion-icon {
        font-size: 1.75rem;
    }

    .sideBar ul li a .title {
        position: relative;
        display: block;
        padding: 0 10px;
        height: 60px;
        line-height: 60px;
        text-align: start;
        white-space: nowrap;
    }

    .sidebar ul li:hover a::before,
    .sideBar ul li.hovered a::before {
        content: "";
        position: absolute;
        right: 0;
        top: -50px;
        width: 50px;
        height: 50px;
        background-color: transparent;
        border-radius: 50%;
        box-shadow: 35px 35px 0 10px var(--white);
        pointer-events: none;
    }
    .sideBar li:hover a::after,
    .sideBar ul li.hovered a::after {
        content: "";
        position: absolute;
        right: 0;
        bottom: -50px;
        width: 50px;
        height: 50px;
        background-color: transparent;
        border-radius: 50%;
        box-shadow: 35px -35px 0 10px var(--white);
        pointer-events: none;
    }
    .main {
        position: absolute;
        width: calc(100% - 300px);
        left: 300px;
        min-height: 100vh;
        background: var(--white);
        transition: 0.5s;
    }
    .main.active {
        width: calc(100% - 80px);
        left: 80px;
    }

    .topbar {
        width: 100%;
        height: 60px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 10px;
    }

    .toggle {
        position: relative;
        width: 60px;
        height: 60px;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 2.5rem;
        cursor: pointer;
    }

    .search {
        position: relative;
        width: 400px;
        margin: 0 10px;
    }

    .search label {
        position: relative;
        width: 100%;
    }

    .search label input {
        width: 100%;
        height: 40px;
        border-radius: 40px;
        padding: 5px 20px;
        padding-left: 35px;
        font-size: 18px;
        outline: none;
        border: 1px solid var(--black2);
    }

    .search label ion-icon {
        position: absolute;
        top: 0;
        left: 10px;
        font-size: 1.2rem;
    }

    .user {
        position: relative;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        overflow: hidden;
        cursor: pointer;
    }

    .user img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .cardBox {
        position: relative;
        width: 100%;
        padding: 20px;
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        grid-gap: 30px;
    }

    .cardBox .card {
        position: relative;
        background: var(--white);
        padding: 30px;
        border-radius: 20px;
        display: flex;
        justify-content: space-between;
        cursor: pointer;
        box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
    }

    .cardBox .card .numbers {
        position: relative;
        font-weight: 500;
        font-size: 2.5rem;
        color: var(--blue);
    }

    .cardBox .card .cardName {
        color: var(--black2);
        font-size: 1.1rem;
        margin-top: 5px;
    }

    .cardBox .card .iconBx {
        font-size: 3.5rem;
        color: var(--black2);
    }

    .cardBox .card:hover {
        background: var(--blue);
    }
    .cardBox .card:hover .numbers,
    .cardBox .card:hover .cardName,
    .cardBox .card:hover .iconBx {
        color: var(--white);
    }

    .details {
        position: relative;
        width: 100%;
        padding: 20px;
        display: grid;
        grid-template-columns: 2fr 1fr;
        grid-gap: 30px;
    }

    .details .Projets{
        position: relative;
        display: grid;
        min-height: 500px;
        background: var(--white);
        padding: 20px;
        box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
        border-radius: 20px;
    }

    .details .cardHeader {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
    }
    .cardHeader h2 {
        font-weight: 600;
        color: var(--blue);
    }
    .cardHeader .btn {
        position: relative;
        padding: 5px 10px;
        background: var(--blue);
        text-decoration: none;
        color: var(--white);
        border-radius: 6px;
    }

    .details table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }
    .details table thead td {
        font-weight: 600;
    }
    .details .Projets table tr {
        color: var(--black1);
        border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    }
    .details .Projets table tr:last-child {
        border-bottom: none;
    }
    .details .Projets table tbody tr:hover {
        background: var(--blue);
        color: var(--white);
    }

    .details .Projets table tbody tr:hover a{
        background: var(--blue);
        color: var(--white);
    }
    .details .Projets table tr td {
        padding: 7px;
    }

    .details .Projets table tr td a{
        color: var(--black1);

    }

    .details .Projets table tr td:last-child {
        text-align: start;
    }
    .details .Projets table tr td:nth-child(2) {
        text-align: start;
    }
    .details .Projets table tr td:nth-child(3) {
        text-align: start;
        width: 15%;
    }
    .details .Projets table tr td:nth-child(4) {
        width: 15%;
    }
    .details .Projets table tr td:nth-child(5) {
        width: 15%;
    }
    .details table{
        width: 100%;
    }
    .details table thead{
        width: 100%;
    }
    .details table tbody{
        width: 100%;
    }
    .Terminee{
        padding: 2px 4px;
        background: #8de02c;
        color: var(--white);
        border-radius: 4px;
        font-size: 14px;
        font-weight: 500;
    }
    .En.cours{
        padding: 2px 4px;
        background: #e9b10a;
        color: var(--white);
        border-radius: 4px;
        font-size: 14px;
        font-weight: 500;
    }
    .Bloquee{
        padding: 2px 4px;
        background: #f00;
        color: var(--white);
        border-radius: 4px;
        font-size: 14px;
        font-weight: 500;
    }
    .v{
        padding: 2px 4px;
        background: #1795ce;
        color: var(--white);
        border-radius: 4px;
        font-size: 14px;
        font-weight: 500;
    }


    .Taches {
        position: relative;
        display: grid;
        min-height: 500px;
        padding: 20px;
        background: var(--white);
        box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
        border-radius: 20px;
    }
    .Taches .imgBx {
        position: relative;
        width: 40px;
        height: 40px;
        border-radius: 50px;
        overflow: hidden;
    }
    .Taches .imgBx img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .Taches table tr td {
        padding: 12px 10px;
    }
    .Taches table tr td h4 {
        font-size: 16px;
        font-weight: 500;
        line-height: 1.2rem;
    }
    .Taches table tr td h4 span {
        font-size: 14px;
        color: var(--black2);
    }
    .Taches table tr:hover {
        background: var(--blue);
        color: var(--white);
    }
    .Tachestable tr:hover td h4 span {
        color: var(--white);
    }
</style>
<div class="container">
    <div class="sideBar">
        <ul>

            <li>
                <a href="#">
                    <span class="icon">
                       <ion-icon name="grid-outline"></ion-icon>
                    </span>
                    <span class="title">Brand Name</span>
                </a>
            </li>

            <li>
                <a href="#">
                    <span class="icon">
                        <ion-icon name="home-outline"></ion-icon>
                    </span>
                    <span class="title">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="icon">
                       <ion-icon name="business-outline"></ion-icon>
                    </span>
                    <span class="title">Projets</span>
                </a>
            </li>

            <li>
                <a href="">
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
                        <td>${Projet.getDateDebutP()}</td>
                        <td>${Projet.getDateFinP()}</td>
                        <td>${Projet.getBudgetProjet()}</td>
                        <td><span class="Terminee">Terminee</span></td>

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


<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>



