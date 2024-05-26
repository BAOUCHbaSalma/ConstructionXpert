package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.DAO.TachesDAOImpl;
import com.octest.beans.Ressources;
import com.octest.beans.Taches;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ShowTachesProjet", value = "/ShowTachesProjet")
public class ShowTachesProjet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id=Integer.valueOf(request.getParameter("id"));
          request.setAttribute("id",id);

        TachesDAOImpl ta=new TachesDAOImpl();
        try {
            ArrayList<Taches> tacheT = ta.TacheTRessources(id);
            request.setAttribute("TacheT",tacheT);

            ArrayList<Taches> tacheB = ta.TacheBRessourcesB(id);
            request.setAttribute("TacheB",tacheB);

            ArrayList<Taches> tacheE = ta.TacheERessources(id);
            request.setAttribute("TacheE",tacheE);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.valueOf(request.getParameter("idProjet"));
        String description=request.getParameter("descriptionTache");
        Date dateDebut=Date.valueOf(request.getParameter("DateDebutTache"));
        Date dateFin=Date.valueOf(request.getParameter("DateFinTache"));
        String StatutTache=request.getParameter("statusTasks");
        Taches th=new Taches(description,dateDebut,dateFin,StatutTache,id);
        TachesDAOImpl td=new TachesDAOImpl();
        try {
            td.AddTaches(th);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        TachesDAOImpl ta=new TachesDAOImpl();
        try {
            ArrayList<Taches> tacheT = ta.TacheTRessources(id);
            request.setAttribute("TacheT",tacheT);

            ArrayList<Taches> tacheB = ta.TacheBRessourcesB(id);
            request.setAttribute("TacheB",tacheB);

            ArrayList<Taches> tacheE = ta.TacheERessources(id);
            request.setAttribute("TacheE",tacheE);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);
    }
}