package com.octest.DAO;

import com.octest.beans.Projets;
import com.octest.config.ConnectionDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProjetsDAOImpl implements ProjetsDAO{
    @Override
    public ArrayList<Projets> ShowProjet() throws SQLException, ClassNotFoundException {
        ArrayList<Projets> projets=new ArrayList<>();
        String sql="SELECT * FROM projet";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer idProjet = resultat.getInt("idProjet");
            String nomProjet=resultat.getString("nomProjet");
            String descriptionProjet=resultat.getString("descriptionProjet");
            Date dateDebutProjet = resultat.getDate("dateDebutProjet");
            Date dateFinProjet = resultat.getDate("dateFinProjet");
            Integer Budget = resultat.getInt("Budget");
            Projets prt=new Projets(idProjet,nomProjet,descriptionProjet,dateDebutProjet,dateFinProjet,Budget);
            projets.add(prt);

        }
        return projets;
    }

    @Override
    public void AddProjet(Projets Projet) throws SQLException, ClassNotFoundException {

        String sql = "INSERT INTO projet (nomProjet,descriptionProjet, dateDebutProjet,dateFinProjet,Budget) VALUES (?,?,?,?,?)";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setString(1,Projet.getNomProjet() );
        s.setString(2,Projet.getDescriptionProjet() );
        s.setDate(3,Projet.getDateDebutP());
        s.setDate(4,Projet.getDateFinP() );
        s.setInt(5,Projet.getBudgetProjet() );
        s.executeUpdate();

    }

    @Override
    public void DeleteProjet(Integer idProjet) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM projet WHERE idProjet = ?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idProjet);
        s.executeUpdate();


    }

    @Override
    public Projets RecupererProjet(Integer idProjet) throws SQLException, ClassNotFoundException {

        String requet = "SELECT * FROM  projet WHERE idProjet=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
        statement.setInt(1, idProjet);
        ResultSet resultat = statement.executeQuery();
        Projets pr = null;
        while (resultat.next()) {
            Integer idProjett = resultat.getInt("idProjet");
            String nomProjet = resultat.getString("nomProjet");
            String descriptionProjet = resultat.getString("descriptionProjet");
            Date dateDebutProjet= resultat.getDate("dateDebutProjet");
            Date dateFinProjet = resultat.getDate("dateFinProjet");
            Integer Budget = resultat.getInt("Budget");
            pr = new Projets(idProjett, nomProjet,descriptionProjet,dateDebutProjet, dateFinProjet,Budget);


        }
        return pr;
    }

    @Override
    public void UpdateProjet(Integer idProjet, Projets Projet) throws SQLException, ClassNotFoundException {
        String sqls = "UPDATE projet SET nomProjet=?,descriptionProjet=?, dateDebutProjet=?,dateFinProjet=?,Budget=? WHERE idProjet=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sqls);
        s.setString(1,Projet.getNomProjet() );
        s.setString(2,Projet.getDescriptionProjet() );
        s.setDate(3,Projet.getDateDebutP());
        s.setDate(4,Projet.getDateFinP() );
        s.setInt(5,Projet.getBudgetProjet());
        s.setInt(6,idProjet);
        s.executeUpdate();

    }
}
