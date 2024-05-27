package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.DAO.TachesDAOImpl;
import com.octest.beans.Taches;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "AssocierRessource", value = "/AssocierRessource")
public class AssocierRessource extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idT=Integer.valueOf(request.getParameter("idT"));
        Integer ressource=Integer.valueOf(request.getParameter("ressource"));
        RessourcesDAOImpl ressou=new RessourcesDAOImpl();
        System.out.println("ddddddddddddddddddddd"+idT);
        System.out.println("rrrrrrrrrrrrrrrrrrrrr"+ressource);
        try {
            ressou.AssocierRessource(ressource,idT);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        Integer id=Integer.valueOf(request.getParameter("idProjet"));
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
}