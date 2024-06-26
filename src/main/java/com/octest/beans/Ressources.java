package com.octest.beans;

public class Ressources {
private Integer idRessource;
private String nomRessource;
private String typeRessource;
private Integer quantiteRoussource;
private String infoFournisseur;
private String img;
private Integer idTache;

    public Ressources(String nomRessource, String typeRessource, Integer quantiteRoussource, String infoFournisseur, String img) {
        this.nomRessource = nomRessource;
        this.typeRessource = typeRessource;
        this.quantiteRoussource = quantiteRoussource;
        this.infoFournisseur = infoFournisseur;
        this.img = img;
    }

    public Ressources(Integer idRessource, String nomRessource, String typeRessource, Integer quantiteRoussource, String infoFournisseur, String img, Integer idTache) {
        this.idRessource = idRessource;
        this.nomRessource = nomRessource;
        this.typeRessource = typeRessource;
        this.quantiteRoussource = quantiteRoussource;
        this.infoFournisseur = infoFournisseur;
        this.img = img;
        this.idTache = idTache;
    }

    public Ressources(Integer idRessource, String nomRessource, String typeRessource, Integer quantiteRoussource, String infoFournisseur, String img) {
        this.idRessource = idRessource;
        this.nomRessource = nomRessource;
        this.typeRessource = typeRessource;
        this.quantiteRoussource = quantiteRoussource;
        this.infoFournisseur = infoFournisseur;
        this.img = img;
    }

    public Ressources(Integer idRessource, String nomRessource, String typeRessource, Integer quantiteRoussource, String infoFournisseur) {
        this.idRessource = idRessource;
        this.nomRessource = nomRessource;
        this.typeRessource = typeRessource;
        this.quantiteRoussource = quantiteRoussource;
        this.infoFournisseur = infoFournisseur;
    }

    public Ressources(Integer idRessource, String nomRessource, String typeRessource, Integer quantiteRoussource, String infoFournisseur, Integer idTache) {
        this.idRessource = idRessource;
        this.nomRessource = nomRessource;
        this.typeRessource = typeRessource;
        this.quantiteRoussource = quantiteRoussource;
        this.infoFournisseur = infoFournisseur;
        this.idTache = idTache;
    }


    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    public Integer getIdRessource() {
        return idRessource;
    }

    public void setIdRessource(Integer idRessource) {
        this.idRessource = idRessource;
    }

    public String getNomRessource() {
        return nomRessource;
    }

    public void setNomRessource(String nomRessource) {
        this.nomRessource = nomRessource;
    }

    public String getTypeRessource() {
        return typeRessource;
    }

    public void setTypeRessource(String typeRessource) {
        this.typeRessource = typeRessource;
    }

    public Integer getQuantiteRoussource() {
        return quantiteRoussource;
    }

    public void setQuantiteRoussource(Integer quantiteRoussource) {
        this.quantiteRoussource = quantiteRoussource;
    }

    public String getInfoFournisseur() {
        return infoFournisseur;
    }

    public void setInfoFournisseur(String infoFournisseur) {
        this.infoFournisseur = infoFournisseur;
    }

    public Integer getIdTache() {
        return idTache;
    }

    public void setIdTache(Integer idTache) {
        this.idTache = idTache;
    }

    @Override
    public String toString() {
        return "Ressources{" +
                "idRessource=" + idRessource +
                ", nomRessource='" + nomRessource + '\'' +
                ", typeRessource='" + typeRessource + '\'' +
                ", quantiteRoussource=" + quantiteRoussource +
                ", infoFournisseur='" + infoFournisseur + '\'' +
                ", img='" + img + '\'' +
                ", idTache=" + idTache +
                '}';
    }
}
