package com.octest.servlets;

import com.octest.DAO.ProjetsDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProjet", value = "/DeleteProjet")
public class DeleteProjet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       Integer id=Integer.valueOf(request.getParameter("id"));
        ProjetsDAOImpl rr=new ProjetsDAOImpl();
        rr.DeleteProjet(id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}