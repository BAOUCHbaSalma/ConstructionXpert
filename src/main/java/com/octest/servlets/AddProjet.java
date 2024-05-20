package com.octest.servlets;

import com.octest.DAO.ProjetsDAOImpl;
import com.octest.beans.Projets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "AddProjet", value = "/AddProjet")
public class AddProjet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProjetsDAOImpl pr=new ProjetsDAOImpl();
        try {
            request.setAttribute("Projets",pr.ShowProjet());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        String NameProjet=request.getParameter("itemName");
        Integer itemBudget=Integer.valueOf(request.getParameter("itemBudget"));
        Date itemDateDebut=Date.valueOf(request.getParameter("itemDateDebut"));
        Date itemDateFin=Date.valueOf(request.getParameter("itemDateFin"));
        String itemDescription=request.getParameter("itemDescription");
        Projets projet=new Projets(NameProjet,itemDescription,itemDateDebut,itemDateFin,itemBudget);
        pr.AddProjet(projet);



        this.getServletContext().getRequestDispatcher("/WEB-INF/AddProjets.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}