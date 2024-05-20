package com.octest.DAO;

import com.octest.beans.Projets;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProjetsDAO {
    ArrayList<Projets> ShowProjet() throws SQLException, ClassNotFoundException;
    void AddProjet(Projets Projet) throws SQLException, ClassNotFoundException;
    void DeleteProjet(Integer idProjet) throws SQLException, ClassNotFoundException;
    Projets RecupererProjet(Integer idProjet) throws SQLException, ClassNotFoundException;
    void UpdateProjet(Integer idProjet, Projets Projet) throws SQLException, ClassNotFoundException;
}
