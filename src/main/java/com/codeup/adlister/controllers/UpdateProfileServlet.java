package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", urlPatterns = "/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        request.setAttribute("user", DaoFactory.getUsersDao().findByUsername(username));
        System.out.println(username);
        request.getRequestDispatcher("/WEB-INF/ads/updateProfile.jsp").forward(request, response);


    }
}
