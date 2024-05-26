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
        String requet = "SELECT * FROM  tache WHERE idTache=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
        statement.setInt(1, idTache);
        ResultSet resultat = statement.executeQuery();
        Taches th= null;
        while (resultat.next()) {
            String descriptionTache = resultat.getString("descriptionTache");
            Date dateDebutTache= resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
            Integer idProjet = resultat.getInt("idProjet");
            th = new Taches(idTache,descriptionTache,dateDebutTache,dateFinTache,statutTache,idProjet);

        }
        return th;
    }

    @Override
    public void UpdateTache(Integer idTache, Taches tache) throws SQLException, ClassNotFoundException {
        String sqls = "UPDATE tache SET descriptionTache=?, dateDebutTache=?,dateFinTache=?,statutTache=?,idProjet=? WHERE idTache=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sqls);
        s.setString(1,tache.getDescription());
        s.setDate(2,tache.getDateDebutTache());
        s.setDate(3,tache.getDateFinTache());
        s.setString(4,tache.getStatutTache());
        s.setInt(5,tache.getIdProjet());
        s.setInt(6,idTache);
        s.executeUpdate();

    }

    @Override
    public ArrayList<Taches> TacheTRessources(Integer idProjet) throws SQLException, ClassNotFoundException {
        String sql="SELECT * FROM tache WHERE idProjet=? AND statutTache=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idProjet);
        s.setString(2,"Terminee");
        ResultSet resultat = s.executeQuery();
         ArrayList<Taches> tache=new ArrayList<>();
        while (resultat.next()) {
            Integer idTache = resultat.getInt("idTache");
            String descriptionTache=resultat.getString("descriptionTache");
            Date dateDebutTache = resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
           Taches t=new Taches();
           t.setIdTache(idTache);
           t.setStatutTache(statutTache);
           t.setDescription(descriptionTache);
           t.setDateDebutTache(dateDebutTache);
           t.setDateFinTache(dateFinTache);
           String sqls="SELECT * FROM ressource WHERE idTache=?";
           PreparedStatement r=ConnectionDAO.getConnection().prepareStatement(sqls);
            r.setInt(1,idTache);
           ResultSet resultatt=r.executeQuery();
           ArrayList<Ressources> rr=new ArrayList<>();
            while(resultatt.next()) {
                Integer idRessource=resultatt.getInt("idRessource");
                String nomRessource=resultatt.getString("nomRessource");
                String typeRessource = resultatt.getString("typeRessource");
                Integer quantiteRessource = resultatt.getInt("quantiteRessource");
                String infoFournisseur = resultatt.getString("infoFournisseur");
                String img = resultatt.getString("Img");
                Ressources rss=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,img);
                rr.add(rss);
            }


           t.setRessource(rr);
            tache.add(t);
        }
        return tache;
    }

    @Override
    public ArrayList<Taches> TacheBRessourcesB(Integer idProjet) throws SQLException, ClassNotFoundException {
        String sql="SELECT * FROM tache WHERE idProjet=? AND statutTache=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idProjet);
        s.setString(2,"Bloquee");
        ResultSet resultat = s.executeQuery();
        ArrayList<Taches> tache=new ArrayList<>();
        while (resultat.next()) {
            Integer idTache = resultat.getInt("idTache");
            String descriptionTache=resultat.getString("descriptionTache");
            Date dateDebutTache = resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
            Taches t=new Taches();
            t.setIdTache(idTache);
            t.setStatutTache(statutTache);
            t.setDescription(descriptionTache);
            t.setDateDebutTache(dateDebutTache);
            t.setDateFinTache(dateFinTache);
            String sqls="SELECT * FROM ressource WHERE idTache=?";
            PreparedStatement r=ConnectionDAO.getConnection().prepareStatement(sqls);
            r.setInt(1,idTache);
            ResultSet resultatt=r.executeQuery();
            ArrayList<Ressources> rr=new ArrayList<>();
            while(resultatt.next()) {
                Integer idRessource=resultatt.getInt("idRessource");
                String nomRessource=resultatt.getString("nomRessource");
                String typeRessource = resultatt.getString("typeRessource");
                Integer quantiteRessource = resultatt.getInt("quantiteRessource");
                String infoFournisseur = resultatt.getString("infoFournisseur");
                String img = resultatt.getString("Img");
                Ressources rss=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,img);
                rr.add(rss);
            }


            t.setRessource(rr);
            tache.add(t);
        }
        return tache;
    }

    @Override
    public ArrayList<Taches> TacheERessources(Integer idProjet) throws SQLException, ClassNotFoundException {
        String sql="SELECT * FROM tache WHERE idProjet=? AND statutTache=?";
        PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);
        s.setInt(1,idProjet);
        s.setString(2,"En cours");
        ResultSet resultat = s.executeQuery();
        ArrayList<Taches> tache=new ArrayList<>();
        while (resultat.next()) {
            Integer idTache = resultat.getInt("idTache");
            String descriptionTache=resultat.getString("descriptionTache");
            Date dateDebutTache = resultat.getDate("dateDebutTache");
            Date dateFinTache = resultat.getDate("dateFinTache");
            String statutTache = resultat.getString("statutTache");
            Taches t=new Taches();
            t.setIdTache(idTache);
            t.setStatutTache(statutTache);
            t.setDescription(descriptionTache);
            t.setDateDebutTache(dateDebutTache);
            t.setDateFinTache(dateFinTache);
            String sqls="SELECT * FROM ressource WHERE idTache=?";
            PreparedStatement r=ConnectionDAO.getConnection().prepareStatement(sqls);
            r.setInt(1,idTache);
            ResultSet resultatt=r.executeQuery();
            ArrayList<Ressources> rr=new ArrayList<>();
            while(resultatt.next()) {
                Integer idRessource=resultatt.getInt("idRessource");
                String nomRessource=resultatt.getString("nomRessource");
                String typeRessource = resultatt.getString("typeRessource");
                Integer quantiteRessource = resultatt.getInt("quantiteRessource");
                String infoFournisseur = resultatt.getString("infoFournisseur");
                String img = resultatt.getString("Img");
                Ressources rss=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,img);
                rr.add(rss);
            }


            t.setRessource(rr);
            tache.add(t);
        }
        return tache;
    }
}
