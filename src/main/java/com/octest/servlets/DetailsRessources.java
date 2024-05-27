package com.octest.servlets;

import com.octest.DAO.RessourcesDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DetailsRessources", value = "/DetailsRessources")
public class DetailsRessources extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idR=Integer.valueOf(request.getParameter("idR"));
        RessourcesDAOImpl re=new RessourcesDAOImpl();
        try {
            request.setAttribute("ressource",re.RecupererRessource(idR));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/detailesRessources.jsp").forward(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}