<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

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

</body>

</html>
