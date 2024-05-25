package com.octest.servlets;

import com.octest.DAO.ProjetsDAOImpl;
import com.octest.DAO.RessourcesDAOImpl;
import com.octest.DAO.TachesDAOImpl;
import com.octest.beans.Taches;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "ShowTaches", value = "/ShowTaches")
public class ShowTaches extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProjetsDAOImpl pr=new ProjetsDAOImpl();
        Integer id=Integer.valueOf(request.getParameter("id"));

        TachesDAOImpl ta=new TachesDAOImpl();
        try {
            request.setAttribute("Tache",ta.ShowTaches(id));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            request.setAttribute("Projets",pr.StatusTasks());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.valueOf(request.getParameter("id"));
        String description=request.getParameter("descriptionTache");
        Date dateDebut=Date.valueOf(request.getParameter("DateDebutTache"));
        Date dateFin=Date.valueOf(request.getParameter("DateFinTache"));
        String StatutTache=request.getParameter("StatutTache");
      Taches th=new Taches(description,dateDebut,dateFin,StatutTache,id);
        TachesDAOImpl td=new TachesDAOImpl();
        try {
            td.AddTaches(th);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);

    }
}