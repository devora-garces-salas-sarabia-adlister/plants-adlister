package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.util.Password;

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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmedPassword = request.getParameter("confirm_password");
        String email = request.getParameter("email");

        if (password.equals(confirmedPassword)) {
            DaoFactory.getUsersDao().updateUserProfile(id, username, password, email);
            response.sendRedirect("/profile");
        }else{
            response.sendRedirect("/updateProfile");
        }

    }

}
