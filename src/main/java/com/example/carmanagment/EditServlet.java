package com.example.carmanagment;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<Cars> arr = ConnectionToDB.ShowByID(Integer.parseInt(request.getParameter("id")));
            request.setAttribute("editdata", arr);
            request.getRequestDispatcher("Edit.jsp").forward(request, response);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int a = ConnectionToDB.Update(Integer.parseInt(request.getParameter("carid")),request.getParameter("carname"),Integer.parseInt(request.getParameter("CarMRY")),Integer.parseInt(request.getParameter("price")));
            if (a>0)
                request.getRequestDispatcher("/").forward(request,response);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
