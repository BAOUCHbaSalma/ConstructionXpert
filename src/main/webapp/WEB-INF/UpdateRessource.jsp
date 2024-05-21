<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <form action="UpdateRessourceTache" method="post" class="card p-4">
        <input type="hidden" name="idRessource" value="${Ressource.getIdRessource()}">
        <div class="form-group">
            <label>Nom Ressource</label>
            <input type="text" name="nomRessource" class="form-control" value="${Ressource.getNomRessource()}" placeholder="Entrer Nom Ressource">
        </div>
        <div class="form-group">
            <label>Type Ressource</label>
            <input type="text" name="typeRessource" class="form-control" value="${Ressource.getTypeRessource()}" placeholder="Entrer Type Ressource">
        </div>
        <div class="form-group">
            <label>Quantite Ressource</label>
            <input type="number" name="quantiteRessource" class="form-control" value="${Ressource.getQuantiteRoussource()}" placeholder="Entrer Quantite Ressource">
        </div>
        <div class="form-group">
            <label>Info Fournisseur</label>
            <input type="text" name="infoFournisseur" class="form-control" value="${Ressource.getInfoFournisseur()}" placeholder="Entrer infoFournisseur">
        </div>
        <input type="hidden" name="idTache" value="${Ressource.getIdTache()}">
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
</body>

</html>
