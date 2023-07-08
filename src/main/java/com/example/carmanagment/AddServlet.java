package com.example.carmanagment;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a = ConnectionToDB.Add(Integer.parseInt(request.getParameter("carid")),request.getParameter("carname"),Integer.parseInt(request.getParameter("CarMRY")),Integer.parseInt(request.getParameter("price")));
        if (a>0)
            request.getRequestDispatcher("/").forward(request,response);
    }
}
