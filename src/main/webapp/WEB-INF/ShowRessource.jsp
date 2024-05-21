<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<c:forEach var="Ressources" items="${Ressources}">

    <h2>Ressource N°: ${Ressources.getIdRessource()}</h2>
    <h2> ${Ressources.getNomRessource()}</h2>
    <h3>${Ressources.getTypeRessource()}</h3>
    <h4>${Ressources.getQuantiteRoussource()}</h4>
    <h4>${Ressources.getInfoFournisseur()}</h4>
    <h4>${Ressources.getIdTache()}</h4>

    <a href="UpdateTache?id=${Ressources.getIdRessource()}">Update</a>
    <a href="DeleteRessource?id=${Ressources.getIdRessource()}">Delete</a>


</c:forEach>

</body>
</html>
