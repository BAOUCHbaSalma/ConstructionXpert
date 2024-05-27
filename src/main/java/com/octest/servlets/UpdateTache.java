package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.DAO.TachesDAOImpl;
import com.octest.beans.Taches;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "UpdateTache", value = "/UpdateTache")
public class UpdateTache extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.valueOf(request.getParameter("id"));
        TachesDAOImpl th=new TachesDAOImpl();
        try {
            request.setAttribute("Tache",th.RecupererTache(id));

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateTache.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer idTache=Integer.valueOf(request.getParameter("idTache"));
        String StatutTache=request.getParameter("StatutTache");
        Date DateDebutTache= Date.valueOf(request.getParameter("DateDebutTache"));
        Date DateFinTache=Date.valueOf(request.getParameter("DateFinTache"));
        String descriptionTache=request.getParameter("descriptionTache");
        Integer id=Integer.valueOf(request.getParameter("idProjet"));
        Taches th=new Taches(idTache,descriptionTache,DateDebutTache,DateFinTache,StatutTache,id);
        TachesDAOImpl td=new TachesDAOImpl();
        try {
            td.UpdateTache(idTache,th);
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
        RessourcesDAOImpl ress=new RessourcesDAOImpl();
        try {
            request.setAttribute("ress",ress.ShowRessources());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);

    }
}