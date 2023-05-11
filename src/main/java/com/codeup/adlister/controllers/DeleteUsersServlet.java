package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUsersServlet", urlPatterns = "/deleteUser")
public class DeleteUsersServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        if(username.equals(null)){
            response.sendRedirect("/login");
        }else{
            System.out.println(username);
            DaoFactory.getUsersDao().deleteUserAcc(username);
            request.getSession().setAttribute("username", null);
            response.sendRedirect("/homepage");
        }
    }
}
