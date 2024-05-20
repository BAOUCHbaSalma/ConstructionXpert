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
    public ArrayList<Taches> ShowTaches(Integer idProjet) throws SQLException, ClassNotFoundException {
        ArrayList<Taches> taches=new ArrayList<>();
        String sql="SELECT * FROM tache WHERE idProjet=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1,idProjet);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer idTache = resultat.getInt("idTache");
            String descriptionTache=resultat.getString("descriptionTache");
            Date dateDebutTache = resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
            Taches th=new Taches(idTache,descriptionTache,dateDebutTache,dateFinTache,statutTache,idProjet);
            taches.add(th);


        }
        return taches;
    }

    @Override
    public void AddTaches(Taches Tache) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO tache (descriptionTache, dateDebutTache,dateFinTache,statutTache,idProjet) VALUES (?,?,?,?,?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1,Tache.getDescription() );
        s.setDate(2,Tache.getDateDebutTache());
        s.setDate(3,Tache.getDateFinTache());
        s.setString(4, Tache.getStatutTache());
        s.setInt(5,Tache.getIdProjet());
        s.executeUpdate();

    }

    @Override
    public void DeleteTaches(Integer idTache) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM tache WHERE idTache = ?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idTache);
        s.executeUpdate();

    }

    @Override
    public Taches RecupererTache(Integer idTache) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public void UpdateTache(Integer idTache, Taches tache) throws SQLException, ClassNotFoundException {

    }
}
