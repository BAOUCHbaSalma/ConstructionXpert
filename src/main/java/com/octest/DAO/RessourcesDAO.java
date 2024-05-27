package com.octest.DAO;

import com.octest.beans.Projets;
import com.octest.beans.Ressources;

import java.sql.SQLException;
import java.util.ArrayList;

public interface RessourcesDAO {

    ArrayList<Ressources> ShowRessources() throws SQLException, ClassNotFoundException;
    void AddRessources(Ressources ressources) throws SQLException, ClassNotFoundException;
    void DeleteRessource(Integer idRessource) throws SQLException, ClassNotFoundException;
    Ressources RecupererRessource(Integer idRessource) throws SQLException, ClassNotFoundException;
    void UpdateRessource(Integer idRessource, Ressources Ressource) throws SQLException, ClassNotFoundException;
    void AssocierRessource(Integer idRessource , Integer idTache)throws SQLException, ClassNotFoundException;
}

