package com.octest.DAO;

import com.octest.beans.Projets;
import com.octest.beans.Taches;
import com.octest.config.ConnectionDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TachesDAOImpl implements TachesDAO{
    @Override
    public ArrayList<Taches> ShowTaches() throws SQLException, ClassNotFoundException {
        ArrayList<Taches> taches=new ArrayList<>();
        String sql="SELECT * FROM tache";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer idTache = resultat.getInt("idTache");
            String descriptionTache=resultat.getString("descriptionTache");
            Date dateDebutTache = resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
            Integer idProjet = resultat.getInt("idProjet");
            Taches th=new Taches(idTache,descriptionTache,dateDebutTache,dateFinTache,statutTache,idProjet);
            taches.add(th);


        }
        return taches;
    }

    @Override
    public void AddTaches(Taches Tache) throws SQLException, ClassNotFoundException {

    }

    @Override
    public void DeleteTaches(Integer idTache) throws SQLException, ClassNotFoundException {

    }

    @Override
    public Taches RecupererTache(Integer idTache) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public void UpdateTache(Integer idTache, Taches tache) throws SQLException, ClassNotFoundException {

    }
}
