package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", urlPatterns = "/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        request.setAttribute("user", DaoFactory.getUsersDao().findByUsername(username));
        request.getRequestDispatcher("/WEB-INF/ads/updateProfile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmedPassword = request.getParameter("confirm_password");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();

        if(password.isEmpty()){
            DaoFactory.getUsersDao().updateUserProfile(id, username, email);
            User user = DaoFactory.getUsersDao().findByUsername(username);
            session.setAttribute("user", user);
            response.sendRedirect("/logout");
        }else{
            if (password.equals(confirmedPassword)) {
                String hash = Password.hash(password);
                DaoFactory.getUsersDao().updateUserProfile(id, username, hash, email);
                User user = DaoFactory.getUsersDao().findByUsername(username);
                session.setAttribute("user", user);
                response.sendRedirect("/logout");
            } else {
                request.setAttribute("passwordError", "Passwords do not match");
                request.getRequestDispatcher("/WEB-INF/ads/updateProfile.jsp").forward(request, response);
            }
        }

    }

}
