package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.DAO.TachesDAOImpl;
import com.octest.beans.Ressources;
import com.octest.beans.Taches;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ShowTachesProjet", value = "/ShowTachesProjet")
public class ShowTachesProjet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id=Integer.valueOf(request.getParameter("id"));


        TachesDAOImpl ta=new TachesDAOImpl();
        try {
            ArrayList<Taches> tache = ta.TacheRessources(id);
            tache.forEach(System.out::println);
            request.setAttribute("Tache",tache);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAddTaches.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}