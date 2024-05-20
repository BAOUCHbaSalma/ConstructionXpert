package com.octest.beans;

import java.util.Date;

public class Projets {
   private Integer idProjet;
   private String nomProjet;
   private String descriptionProjet;
   private Date dateDebutP;
   private Date  dateFinP;
   private Integer BudgetProjet;

    public Projets(String nomProjet, String descriptionProjet, Date dateDebutP, Date dateFinP, Integer budgetProjet) {
        this.nomProjet = nomProjet;
        this.descriptionProjet = descriptionProjet;
        this.dateDebutP = dateDebutP;
        this.dateFinP = dateFinP;
        BudgetProjet = budgetProjet;
    }

    public Projets(Integer idProjet, String nomProjet, String descriptionProjet, Date dateDebutP, Date dateFinP, Integer budgetProjet) {
        this.idProjet = idProjet;
        this.nomProjet = nomProjet;
        this.descriptionProjet = descriptionProjet;
        this.dateDebutP = dateDebutP;
        this.dateFinP = dateFinP;
        BudgetProjet = budgetProjet;
    }

    public Integer getIdProjet() {
        return idProjet;
    }

    public void setIdProjet(Integer idProjet) {
        this.idProjet = idProjet;
    }

    public String getNomProjet() {
        return nomProjet;
    }

    public void setNomProjet(String nomProjet) {
        this.nomProjet = nomProjet;
    }

    public String getDescriptionProjet() {
        return descriptionProjet;
    }

    public void setDescriptionProjet(String descriptionProjet) {
        this.descriptionProjet = descriptionProjet;
    }

    public java.sql.Date getDateDebutP() {
        return dateDebutP;
    }

    public void setDateDebutP(Date dateDebutP) {
        this.dateDebutP = dateDebutP;
    }

    public Date getDateFinP() {
        return dateFinP;
    }

    public void setDateFinP(Date dateFinP) {
        this.dateFinP = dateFinP;
    }

    public Integer getBudgetProjet() {
        return BudgetProjet;
    }

    public void setBudgetProjet(Integer budgetProjet) {
        BudgetProjet = budgetProjet;
    }
}
