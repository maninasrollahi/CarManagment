package com.example.carmanagment;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("data", ConnectionToDB.ShowAll());
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setAttribute("data", ConnectionToDB.ShowAll());
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
