package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;
import com.octest.beans.Ressources;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddRessource", value = "/AddRessource")
public class AddRessource extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomRessource=request.getParameter("nomRessource");
        String typeRessource=request.getParameter("typeRessource");
        Integer quantiteRessource=Integer.valueOf(request.getParameter("quantiteRessource"));
        String infoFournisseur=request.getParameter("infoFournisseur");
        String img=request.getParameter("img");
        Ressources rr=new Ressources(nomRessource,typeRessource,quantiteRessource,infoFournisseur,img);
        RessourcesDAOImpl rd=new RessourcesDAOImpl();
        try {
            rd.AddRessources(rr);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        RessourcesDAOImpl re=new RessourcesDAOImpl();
        try {
            request.setAttribute("Ressources",re.ShowRessources());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/ShowAllRessource.jsp").forward(request, response);

    }
}