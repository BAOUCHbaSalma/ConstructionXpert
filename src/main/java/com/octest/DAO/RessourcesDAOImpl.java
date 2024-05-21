package com.octest.DAO;

import com.octest.beans.Projets;
import com.octest.beans.Ressources;
import com.octest.beans.Taches;
import com.octest.config.ConnectionDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RessourcesDAOImpl implements RessourcesDAO{
    @Override
    public ArrayList<Ressources> ShowRessources(Integer idTache) throws SQLException, ClassNotFoundException {
        ArrayList<Ressources> ressources=new ArrayList<>();
        String sql="SELECT * FROM ressource WHERE idTache=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,idTache);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer idRessource=resultat.getInt("idRessource");
            String nomRessource=resultat.getString("nomRessource");
            String typeRessource = resultat.getString("typeRessource");
            Integer quantiteRessource = resultat.getInt("quantiteRessource");
            String infoFournisseur = resultat.getString("infoFournisseur");
             Ressources rs=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,idTache);
            ressources.add(rs);


        }
        return ressources;
    }

    @Override
    public void AddRessources(Projets Projet) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void DeleteProjet(Integer idProjet) throws SQLException, ClassNotFoundException {

    }

    @Override
    public Projets RecupererProjet(Integer idProjet) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public void UpdateProjet(Integer idProjet, Projets Projet) throws SQLException, ClassNotFoundException {

    }
}
