package com.octest.DTO;

import java.sql.Date;

public class ProjetTasks {
    private Integer idProjet;
    private String nomProjet;
    private String descriptionProjet;
    private Date dateDebutP;
    private Date  dateFinP;
    private Integer BudgetProjet;
    private String statutTache;

    private Integer numberTask;

    private Integer totalTask;

    public ProjetTasks(Integer idProjet, String nomProjet, String descriptionProjet, Date dateDebutP, Date dateFinP, Integer budgetProjet, String statutTache) {
        this.idProjet = idProjet;
        this.nomProjet = nomProjet;
        this.descriptionProjet = descriptionProjet;
        this.dateDebutP = dateDebutP;
        this.dateFinP = dateFinP;
        BudgetProjet = budgetProjet;
        this.statutTache = statutTache;
    }

    public ProjetTasks() {
    }

    public Integer getNumberTask() {
        return numberTask;
    }

    public void setNumberTask(Integer numberTask) {
        this.numberTask = numberTask;
    }

    public Integer getTotalTask() {
        return totalTask;
    }

    public void setTotalTask(Integer totalTask) {
        this.totalTask = totalTask;
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

    public Date getDateDebutP() {
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

    public String getStatutTache() {
        return statutTache;
    }

    public void setStatutTache(String statutTache) {
        this.statutTache = statutTache;
    }
}
