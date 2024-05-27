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
      <section class="sectionAddTache">
          <button class="AddTache btn btn-outline-primary">Add Task</button>
          <div class="generalFormTach">
              <button class="close-add"><ion-icon name="close-circle-outline"></ion-icon></button>
              <form action="ShowTachesProjet" method="post" class="card p-4">

                  <div class="form-group">
                      <label>Description</label>
                      <input type="text" name="descriptionTache" class="form-control" placeholder="Entrer Description">
                  </div>
                  <div class="form-group">
                      <label>Date Debut</label>
                      <input type="date" name="DateDebutTache" class="form-control" placeholder="Entrer Date Debut">
                  </div>
                  <div class="form-group">
                      <label>Date Fin</label>
                      <input type="date" name="DateFinTache" class="form-control" placeholder="Entrer Date Fin">
                  </div>
                  <div class="form-group">
                      <label>Statut Tache</label>
                      <select name="statusTasks">
                          <option value="En cours">En cours</option>
                          <option value="Terminee">Terminee</option>
                          <option value="Bloquee">Bloquee</option>
                      </select><br>
                  </div>
                      <input type="hidden" name="idProjet" value="${id}">
                  <button type="submit" class="btn btn-primary">Ajouter</button>
              </form>
          </div>
      </section>
      <div class="main-wrapper">
          <div class="afaire">
                  <h2><em>En cours</em></h2>
              <div class="tasK-wrapper">
                  <div class="TaskF">
                      <c:forEach var="tache" items="${TacheE}">
                          <div class="task">
                              <div class="iconsT">
                                  <h2>${tache.getIdTache()}-${tache.getDescription()}</h2>
                                  <div class="icons-tache">
                                      <a href="DeleteTache?idT=${tache.getIdTache()}&id=${id}" class="lien1"><ion-icon name="trash-outline"></ion-icon></a>
                                      <a class="lien3"><ion-icon name="create-outline"></ion-icon></a>
                                      <a class="lien2"><ion-icon name="add-circle-outline"></ion-icon></a>
                                  </div>
                                  <div class="modifieTach">
                                      <button class="close-add"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="UpdateTache" method="post" class="mb-4">
                                          <input type="hidden" name="idTache" value="${tache.getIdTache()}">
                                          <div class="form-group">
                                              <label for="descriptionTache">Description</label>
                                              <input type="text" class="form-control" id="descriptionTache" name="descriptionTache" value="${tache.getDescription()}" placeholder="Entrer description du tache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateDebutTache">Date de début</label>
                                              <input type="date" class="form-control" id="DateDebutTache" value="${tache.getDateDebutTache()}" name="DateDebutTache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateFinTache">Date de fin</label>
                                              <input type="date" class="form-control" id="DateFinTache" value="${tache.getDateFinTache()}" name="DateFinTache" >
                                          </div>
                                          <select class="form-select" aria-label="Default select example" value="${tache.getStatutTache()}" name="StatutTache">
                                              <option selected>Open this select menu</option>
                                              <option value="En cours">En cours</option>
                                              <option value="Bloquee">Bloquee</option>
                                              <option value="Terminee">Terminee</option>
                                          </select>
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <button type="submit" class="btn btn-primary">Update</button>
                                      </form>
                                  </div>
                                  <div class="AddRessourceT">
                                      <button class="close-addR"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="AssocierRessource" method="post" class="mb-4">
                                            <input type="hidden" name="idT" value="${tache.getIdTache()}">
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <select class="form-select" aria-label="Default select example" name="ressource">
                                              <c:forEach var="ress" items="${ress}">
                                              <option value="${ress.getIdRessource()}">${ress.getNomRessource()}</option>
                                              </c:forEach>
                                          </select><br>

                                          <button type="submit" class="btn btn-outline-dark">Ajouter</button>
                                      </form>
                                  </div>
                              </div>
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
                              <div class="resourceP" id="resourceP">
                                  <div class="resourceControls" id="resourceControls">
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

          </div>

          <div class="afaire">
              <h2><em>Bloquee</em></h2>
              <div class="tasK-wrapper">
                  <div class="TaskF">
                      <c:forEach var="tache" items="${TacheB}">
                          <div class="task">
                              <div class="iconsT">
                                  <h2>${tache.getIdTache()}-${tache.getDescription()}</h2>
                                  <div class="icons-tache">
                                      <a href="DeleteTache?idT=${tache.getIdTache()}&id=${id}" class="lien1"><ion-icon name="trash-outline"></ion-icon></a>
                                      <a class="lien3"><ion-icon name="create-outline"></ion-icon></a>
                                      <a class="lien2"><ion-icon name="add-circle-outline"></ion-icon></a>
                                  </div>
                                  <div class="modifieTach">
                                      <button class="close-add"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="UpdateTache" method="post" class="mb-4">
                                          <input type="hidden" name="idTache" value="${tache.getIdTache()}">
                                          <div class="form-group">
                                              <label for="descriptionTache">Description</label>
                                              <input type="text" class="form-control" id="descriptionTache" name="descriptionTache" value="${tache.getDescription()}" placeholder="Entrer description du tache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateDebutTache">Date de début</label>
                                              <input type="date" class="form-control" id="DateDebutTache" value="${tache.getDateDebutTache()}" name="DateDebutTache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateFinTache">Date de fin</label>
                                              <input type="date" class="form-control" id="DateFinTache" value="${tache.getDateFinTache()}" name="DateFinTache" >
                                          </div>
                                          <select class="form-select" aria-label="Default select example" value="${tache.getStatutTache()}" name="StatutTache">
                                              <option selected>Open this select menu</option>
                                              <option value="En cours">En cours</option>
                                              <option value="Bloquee">Bloquee</option>
                                              <option value="Terminee">Terminee</option>
                                          </select>
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <button type="submit" class="btn btn-primary">Update</button>
                                      </form>
                                  </div>
                                  <div class="AddRessourceT">
                                      <button class="close-addR"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="AssocierRessource" method="post" class="mb-4">
                                          <input type="hidden" name="idT" value="${tache.getIdTache()}">
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <select class="form-select" aria-label="Default select example" name="ressource">
                                              <c:forEach var="ress" items="${ress}">
                                                  <option value="${ress.getIdRessource()}">${ress.getNomRessource()}</option>
                                              </c:forEach>
                                          </select><br>

                                          <button type="submit" class="btn btn-outline-dark">Ajouter</button>
                                      </form>
                                  </div>
                              </div>
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
                              <div class="resourceP" id="resourceP">
                                  <div class="resourceControls" id="resourceControls">
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

          </div>
          <div class="afaire">
              <h2><em>Termine</em></h2>
              <div class="tasK-wrapper">
                  <div class="TaskF">
                      <c:forEach var="tache" items="${TacheT}">
                          <div class="task">
                              <div class="iconsT">
                                  <h2>${tache.getIdTache()}-${tache.getDescription()}</h2>
                                  <div class="icons-tache">
                                      <a href="DeleteTache?idT=${tache.getIdTache()}&id=${id}" class="lien1"><ion-icon name="trash-outline"></ion-icon></a>
                                      <a class="lien3"><ion-icon name="create-outline"></ion-icon></a>
                                      <a class="lien2"><ion-icon name="add-circle-outline"></ion-icon></a>
                                  </div>
                                  <div class="modifieTach">
                                      <button class="close-add"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="UpdateTache" method="post" class="mb-4">
                                          <input type="hidden" name="idTache" value="${tache.getIdTache()}">
                                          <div class="form-group">
                                              <label for="descriptionTache">Description</label>
                                              <input type="text" class="form-control" id="descriptionTache" name="descriptionTache" value="${tache.getDescription()}" placeholder="Entrer description du tache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateDebutTache">Date de début</label>
                                              <input type="date" class="form-control" id="DateDebutTache" value="${tache.getDateDebutTache()}" name="DateDebutTache">
                                          </div>
                                          <div class="form-group">
                                              <label for="DateFinTache">Date de fin</label>
                                              <input type="date" class="form-control" id="DateFinTache" value="${tache.getDateFinTache()}" name="DateFinTache" >
                                          </div>
                                          <select class="form-select" aria-label="Default select example" value="${tache.getStatutTache()}" name="StatutTache">
                                              <option selected>Open this select menu</option>
                                              <option value="En cours">En cours</option>
                                              <option value="Bloquee">Bloquee</option>
                                              <option value="Terminee">Terminee</option>
                                          </select>
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <button type="submit" class="btn btn-primary">Update</button>
                                      </form>
                                  </div>
                                  <div class="AddRessourceT">
                                      <button class="close-addR"><ion-icon name="close-circle-outline"></ion-icon></button>
                                      <form action="AssocierRessource" method="post" class="mb-4">
                                          <input type="hidden" name="idT" value="${tache.getIdTache()}">
                                          <input type="hidden" name="idProjet" value="${id}">
                                          <select class="form-select" aria-label="Default select example" name="ressource">
                                              <c:forEach var="ress" items="${ress}">
                                                  <option value="${ress.getIdRessource()}">${ress.getNomRessource()}</option>
                                              </c:forEach>
                                          </select><br>

                                          <button type="submit" class="btn btn-outline-dark">Ajouter</button>
                                      </form>
                                  </div>
                              </div>
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
                              <div class="resourceP" id="resourceP">
                                  <div class="resourceControls" id="resourceControls">
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

    document.querySelectorAll(".task").forEach(T =>{
        const iconsT = T.querySelectorAll(".iconsT");
        iconsT.forEach(e =>{
            const popup = e.querySelector(".modifieTach");
            const popup2 = e.querySelectorAll(".modifieTach");
            const iconsTache = e.querySelectorAll(".icons-tache");
            iconsTache.forEach(i =>{
                const lien3 = i.querySelector(".lien3");
                lien3.addEventListener("click", ()=>{
                    popup.style.display = "block";
                })
            })
            popup2.forEach(p =>{
                const close = p.querySelector(".close-add");
                close.addEventListener("click" , ()=>{
                    popup.style.display = "none";
                })
            })
        })
    })
    document.querySelectorAll(".task").forEach(T =>{
        const iconsT = T.querySelectorAll(".iconsT");
        iconsT.forEach(e =>{
            const popup = e.querySelector(".AddRessourceT");
            const popup2 = e.querySelectorAll(".AddRessourceT");
            const iconsTache = e.querySelectorAll(".icons-tache");
            iconsTache.forEach(i =>{
                const lien2 = i.querySelector(".lien2");
                lien2.addEventListener("click", ()=>{
                    popup.style.display = "block";
                })
            })
            popup2.forEach(p =>{
                const close = p.querySelector(".close-addR");
                close.addEventListener("click" , ()=>{
                    popup.style.display = "none";
                })
            })
        })
    })

    document.querySelector(".AddTache").addEventListener("click",()=>{
        document.querySelector(".generalFormTach").style.display = "flex";
    })
    document.querySelector(".close-add").addEventListener("click",()=>{
        document.querySelector(".generalFormTach").style.display = "none";
    })



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
