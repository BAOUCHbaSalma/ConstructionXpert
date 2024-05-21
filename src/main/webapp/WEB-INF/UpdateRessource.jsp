<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="UpdateRessourceTache" method="post">
    <input type="hidden" name="idRessource"  value="${Ressource.getIdRessource()}" placeholder="Entrer id">
    <input type="text" name="nomRessource"  value="${Ressource.getNomRessource()}" placeholder="Entrer Nom Ressource">
    <input type="text" name="typeRessource" value="${Ressource.getTypeRessource()}" placeholder="Entrer Type Ressource">
    <input type="number" name="quantiteRessource"  value="${Ressource.getQuantiteRoussource()}" placeholder="Entrer Quantite Ressource">
    <input type="text" name="infoFournisseur" value="${Ressource.getInfoFournisseur()}" placeholder="Entrer infoFournisseur">
    <input type="hidden" name="idTache"  value="${Ressource.getIdTache()}">
    <button type="submit">Modifier</button>

</form>

</body>
</html>
