package com.octest.DAO;

import com.octest.DTO.ProjetTasks;
import com.octest.beans.Projets;
import com.octest.config.ConnectionDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Objects;

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

    @Override
    public ArrayList<ProjetTasks> StatusTasks() throws SQLException, ClassNotFoundException {
        String sql = "SELECT t.statutTache, p.idProjet, p.nomProjet, p.descriptionProjet, p.dateDebutProjet, p.dateFinProjet, p.Budget, COUNT(t.statutTache) AS nb_task FROM tache t INNER JOIN projet p on t.idProjet = p.idProjet WHERE t.statutTache = 'Terminee' GROUP BY p.idProjet";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();
        ArrayList<ProjetTasks> projetTasks = new ArrayList<>();

        while (resultat.next()) {
            ProjetTasks projetTask = new ProjetTasks();
            projetTask.setIdProjet(resultat.getInt("idProjet"));
            projetTask.setNomProjet(resultat.getString("nomProjet"));
            projetTask.setDescriptionProjet(resultat.getString("descriptionProjet"));
            projetTask.setDateDebutP(resultat.getDate("dateDebutProjet"));
            projetTask.setDateFinP(resultat.getDate("dateFinProjet"));
            projetTask.setBudgetProjet(resultat.getInt("Budget"));
            projetTask.setNumberTask(resultat.getInt("nb_task"));
            projetTasks.add(projetTask);
        }

        for (ProjetTasks projetTask : projetTasks) {
            String sqls = "SELECT COUNT(t.idTache) as total_task FROM tache t INNER JOIN projet p on t.idProjet = p.idProjet WHERE p.idProjet = ?";
            PreparedStatement st = ConnectionDAO.getConnection().prepareStatement(sqls);
            st.setInt(1, projetTask.getIdProjet());
            ResultSet resultatt = st.executeQuery();
            if (resultatt.next()) {
                projetTask.setTotalTask(resultatt.getInt("total_task"));
                if (projetTask.getNumberTask() == projetTask.getTotalTask()) {
                    projetTask.setStatutTache("Terminee");
                } else {
                    projetTask.setStatutTache("En cours");
                }
            }
        }


        return projetTasks;
    }


}
