<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h5>Ajouter Tache</h5>
<form action="ShowTaches" method="post">
  <input type="text" name="descriptionTache" placeholder="Entrer description">
  <input type="Date" name="DateDebutTache" placeholder="Entrer Date Debut">
  <input type="Date" name="DateFinTache" placeholder="Entrer Date Fin">
  <input type="text" name="StatutTache" placeholder="Entrer statut">
  <input type="hidden" name="id" value="${idProjet}">
  <button type="submit">Ajouter</button>

</form>

<c:forEach var="Tache" items="${Tache}">

  <h2>Projet N°: ${Tache.getIdTache()}</h2>
  <h2> ${Tache.getDescription()}</h2>
  <h3>${Tache.getDateDebutTache()}</h3>
  <h4>${Tache.getDateFinTache()}</h4>
  <h4>${Tache.getStatutTache()}</h4>
  <h4>${Tache.getIdProjet()}</h4>

  <a href="UpdateTache?id=${Tache.getIdTache()}">Update</a>
  <a href="DeleteTache?id=${Tache.getIdTache()}">Delete</a>
  <a href="ShowRessourceTache?id=${Tache.getIdTache()}">Show Ressources</a>
  <a href="ShowRessource?id=${Tache.getIdTache()}">Add Ressources</a>

</c:forEach>

</body>
</html>
