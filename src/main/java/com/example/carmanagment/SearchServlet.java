package com.example.carmanagment;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            ArrayList<Cars> arr = ConnectionToDB.ShowByID(Integer.parseInt(request.getParameter("carid")));
            request.setAttribute("search",arr);
            request.getRequestDispatcher("Search.jsp").forward(request,response);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
