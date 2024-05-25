package com.octest.beans;

import java.sql.Date;
import java.util.ArrayList;


public class Taches {
    private Integer idTache;
    private String description;
   private Date dateDebutTache;
   private Date dateFinTache;
   private String statutTache;
   private Integer idProjet;
  private ArrayList<Ressources> Ressource;

    public ArrayList<Ressources> getRessource() {
        return Ressource;
    }

    public void setRessource(ArrayList<Ressources> ressource) {
        Ressource = ressource;
    }


    public Taches(Integer idTache, String description, Date dateDebutTache, Date dateFinTache, String statutTache, Integer idProjet, ArrayList<Ressources> ressource) {
        this.idTache = idTache;
        this.description = description;
        this.dateDebutTache = dateDebutTache;
        this.dateFinTache = dateFinTache;
        this.statutTache = statutTache;
        this.idProjet = idProjet;
        Ressource = ressource;
    }

    public Taches() {

    }

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

    @Override
    public String toString() {
        return "Taches{" +
                "idTache=" + idTache +
                ", description='" + description + '\'' +
                ", dateDebutTache=" + dateDebutTache +
                ", dateFinTache=" + dateFinTache +
                ", statutTache='" + statutTache + '\'' +
                ", idProjet=" + idProjet +
                ", Ressource=" + Ressource +
                '}';
    }
}
