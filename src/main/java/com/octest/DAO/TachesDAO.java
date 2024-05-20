package com.octest.DAO;

import com.octest.beans.Taches;

import java.sql.SQLException;
import java.util.ArrayList;

public interface TachesDAO {
    ArrayList<Taches> ShowTaches(Integer idProjet) throws SQLException, ClassNotFoundException;
    void AddTaches(Taches Tache) throws SQLException, ClassNotFoundException;
    void DeleteTaches(Integer idTache) throws SQLException, ClassNotFoundException;
    Taches RecupererTache(Integer idTache) throws SQLException, ClassNotFoundException;
    void UpdateTache(Integer idTache, Taches tache) throws SQLException, ClassNotFoundException;
}
