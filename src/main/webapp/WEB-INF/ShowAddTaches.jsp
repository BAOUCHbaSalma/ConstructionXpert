<%--
  Created by IntelliJ IDEA.
  User: selma
  Date: 20/05/2024
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
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
  <button type="submit">Ajouter</button>

</form>

</body>
</html>
