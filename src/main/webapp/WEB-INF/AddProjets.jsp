

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style><%@include file="styleee.css"%></style>

</head>
<body>
<header>
    <ul class="linknav">
        <li>Acceuil</li>
        <li>About us</li>
        <li>Projets</li>
        <li>Commentaires</li>

    </ul>
</header>
<section class="general">
    <div class="left">
        <div class="table">
            <h3 >Vos Tableaux</h3>
            <h4 onclick="showPopup('add')">+</h4>
        </div>
        <div class="projects">
            <div class="nomProjet">
                <h5>Construction Hotel</h5>
            </div>

            <div class="menu">
                <span class="dots" onclick="toggleMenu()">⋮</span>
                <div class="menu-options" id="menuOptions">
                    <div class="option" onclick="alert('Modifier option selected')">Modifier</div>
                    <div class="option" onclick="alert('Supprimer option selected')">Supprimer</div>
                </div>
            </div>
        </div>
        <div class="projects">
            <div class="nomProjet">
                <h5>Construction Hotel</h5>
            </div>

            <div class="menu">
                <span class="dots" onclick="toggleMenu()">⋮</span>
                <div class="menu-options" id="menuOptions">
                    <div class="option" onclick="showPopup('add')">Ajouter</div>
                    <div class="option" onclick="alert('Modifier option selected')">Modifier</div>
                    <div class="option" onclick="alert('Supprimer option selected')">Supprimer</div>
                </div>
            </div>
        </div>
        <div class="projects">
            <h5>Construction Hotel</h5>
            <div class="menu">
                <span class="dots" onclick="toggleMenu()">⋮</span>
                <div class="menu-options" id="menuOptions">
                    <div class="option" onclick="alert('Modifier option selected')">Modifier</div>
                    <div class="option" onclick="alert('Supprimer option selected')">Supprimer</div>
                </div>
            </div>
        </div>

    </div>
    <div class="right">

        <div class="image-section">
            <img src="https://i.ibb.co/swD1Dc9/ivan-bandura-b-Nm-VYEd5-VJI-unsplash.jpg" alt="Construction Hotel">
        </div>
        <div class="content-section">

            <p>
                Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum
            </p>
            <div class="grid">
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
                <div class="grid-item"><span>1</span> LOREM</div>
            </div>
        </div>


    </div>
</section>
<div class="popup" id="popupForm">
    <div class="popup-content">
        <span class="close" onclick="closePopup()">&times;</span>
        <h5>Ajouter Projet</h5>
        <form>

            <input type="text" name="itemName" placeholder="Entrer name">
            <input type="Date" name="itemDateDebut" placeholder="Entrer Date Debut">
            <input type="Date" name="itemDateFin" placeholder="Entrer Date Fin">
            <input type="Number" name="itemBudget" placeholder="Entrer Budget">
            <textarea  name="itemDescription" placeholder="Entrer Description"></textarea>
            <button type="submit">Ajouter</button>

        </form>
    </div>
</div>



</body>
</html>