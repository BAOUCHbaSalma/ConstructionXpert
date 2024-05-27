package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.beans.Ressources;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateRessourceTache", value = "/UpdateRessourceTache")
public class UpdateRessourceTache extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id=Integer.valueOf(request.getParameter("id"));
        RessourcesDAOImpl rc=new RessourcesDAOImpl();
        try {
            request.setAttribute("Ressource",rc.RecupererRessource(id));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateRessource.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idRessource=Integer.valueOf(request.getParameter("idRessource").trim());
        String nomRessource=request.getParameter("nomRessource");
        String typeRessource=request.getParameter("typeRessource");
       Integer quantiteRessource=Integer.valueOf(request.getParameter("quantiteRessource"));
        String infoFournisseur=request.getParameter("infoFournisseur");
        Integer idTache=Integer.valueOf(request.getParameter("idTache").trim());

        Ressources rc=new Ressources(idRessource,nomRessource,typeRessource,quantiteRessource,infoFournisseur,idTache);
        RessourcesDAOImpl re=new RessourcesDAOImpl();
        try {
            re.UpdateRessource(idRessource,rc);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        RessourcesDAOImpl rcc=new RessourcesDAOImpl();
        try {
            request.setAttribute("ressource",rcc.RecupererRessource(idRessource));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/detailesRessources.jsp").forward(request, response);

    }
}