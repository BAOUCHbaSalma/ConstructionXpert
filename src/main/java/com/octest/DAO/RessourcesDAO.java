package com.octest.DAO;

import com.octest.beans.Projets;
import com.octest.beans.Ressources;

import java.sql.SQLException;
import java.util.ArrayList;

public interface RessourcesDAO {
    ArrayList<Ressources> ShowRessources(Integer idTache) throws SQLException, ClassNotFoundException;
    void AddRessources(Projets Projet) throws SQLException, ClassNotFoundException;
    void DeleteProjet(Integer idProjet) throws SQLException, ClassNotFoundException;
    Projets RecupererProjet(Integer idProjet) throws SQLException, ClassNotFoundException;
    void UpdateProjet(Integer idProjet, Projets Projet) throws SQLException, ClassNotFoundException;
}

