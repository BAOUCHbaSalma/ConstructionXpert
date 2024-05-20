package com.octest.beans;

import java.util.ArrayList;
import java.util.Date;

public class Taches {
    private Integer idTache;
    private String description;
   private Date dateDebutTache;
   private Date dateFinTache;
   private String statutTache;
   private Integer idProjet;
   ArrayList<Ressources> Ressource;

    public Taches(Integer idTache, String description, Date dateDebutTache, Date dateFinTache, String statutTache, Integer idProjet) {
        this.idTache = idTache;
        this.description = description;
        this.dateDebutTache = dateDebutTache;
        this.dateFinTache = dateFinTache;
        this.statutTache = statutTache;
        this.idProjet = idProjet;

    }

    public Taches(String description, Date dateDebutTache, Date dateFinTache, String statutTache, Integer idProjet) {
        this.description = description;
        this.dateDebutTache = dateDebutTache;
        this.dateFinTache = dateFinTache;
        this.statutTache = statutTache;
        this.idProjet = idProjet;
    }

    public Integer getIdTache() {
        return idTache;
    }

    public void setIdTache(Integer idTache) {
        this.idTache = idTache;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateDebutTache() {
        return dateDebutTache;
    }

    public void setDateDebutTache(Date dateDebutTache) {
        this.dateDebutTache = dateDebutTache;
    }

    public Date getDateFinTache() {
        return dateFinTache;
    }

    public void setDateFinTache(Date dateFinTache) {
        this.dateFinTache = dateFinTache;
    }

    public String getStatutTache() {
        return statutTache;
    }

    public void setStatutTache(String statutTache) {
        this.statutTache = statutTache;
    }

    public Integer getIdProjet() {
        return idProjet;
    }

    public void setIdProjet(Integer idProjet) {
        this.idProjet = idProjet;
    }
}
