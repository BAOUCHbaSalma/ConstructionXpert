package com.octest.DAO;

import com.octest.beans.Projets;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProjetsDAO {
    ArrayList<Projets> ShowProjet() throws SQLException, ClassNotFoundException;
    void AddProjet(Projets Projet) throws SQLException, ClassNotFoundException;
    void DeleteProjet(Integer idProjet);
    Projets RecupererProjet(Integer idProjet);
    void UpdateProjet(Integer idProjet, Projets projet);
}
