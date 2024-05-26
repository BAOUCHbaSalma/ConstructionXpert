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
    public ArrayList<Ressources> ShowRessources() throws SQLException, ClassNotFoundException {
        ArrayList<Ressources> ressources=new ArrayList<>();
        String sql="SELECT * FROM ressource ";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();
        while (resultat.next()) {
            Integer idRessource=resultat.getInt("idRessource");
            String nomRessource=resultat.getString("nomRessource");
            String typeRessource = resultat.getString("typeRessource");
            Integer quantiteRessource = resultat.getInt("quantiteRessource");
            String infoFournisseur = resultat.getString("infoFournisseur");
            String img = resultat.getString("img");

            Ressources rs=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,img);
            ressources.add(rs);


        }
        return ressources;
    }

    @Override
    public void AddRessources(Projets Projet) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void DeleteRessource(Integer idRessource) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM ressource WHERE idRessource = ?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idRessource);
        s.executeUpdate();

    }

    @Override
    public Ressources RecupererRessource(Integer idRessource) throws SQLException, ClassNotFoundException {
        String requet = "SELECT * FROM  ressource WHERE idRessource=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
        statement.setInt(1, idRessource);
        ResultSet resultat = statement.executeQuery();
        Ressources rc= null;
        while (resultat.next()) {
            String nomRessource= resultat.getString("nomRessource");
            String typeRessource = resultat.getString("typeRessource");
            Integer quantiteRessource = resultat.getInt("quantiteRessource");
            String infoFournisseur = resultat.getString("infoFournisseur");
            Integer idTache=resultat.getInt("idTache");
            rc = new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,idTache);

        }
        return rc;
    }

    @Override
    public void UpdateRessource(Integer idRessource, Ressources Ressource) throws SQLException, ClassNotFoundException {
        String sqls = "UPDATE ressource SET nomRessource=?,typeRessource=?, quantiteRessource=?,infoFournisseur=?,idTache=? WHERE idRessource=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sqls);
        s.setString(1,Ressource.getNomRessource());
        s.setString(2,Ressource.getTypeRessource());
        s.setInt(3,Ressource.getQuantiteRoussource());
        s.setString(4,Ressource.getInfoFournisseur());
        s.setInt(5,Ressource.getIdTache());
        s.setInt(6,idRessource);
        s.executeUpdate();

    }

    @Override
    public void AssocierRessource(Integer idRessource, Integer idTache) throws SQLException, ClassNotFoundException {
        String sqls = "UPDATE ressource SET idTache=? WHERE idRessource=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sqls);
        s.setInt(1,idTache);
        s.setInt(2,idRessource);
        s.executeUpdate();

    }
}
