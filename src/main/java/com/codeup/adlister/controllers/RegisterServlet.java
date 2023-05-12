package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation))
            || DaoFactory.getUsersDao().findByUsername(username) != null
            || DaoFactory.getUsersDao().findByEmail(email) != null;


        if (inputHasErrors) {
            if (username.isEmpty()) {
                request.setAttribute("usernameError", "Please enter a username");
            } else if (DaoFactory.getUsersDao().findByUsername(username) != null) {
                request.setAttribute("usernameError", "Username already exists");
            }
            if (email.isEmpty()) {
                request.setAttribute("emailError", "Please enter an email address");
            } else if (DaoFactory.getUsersDao().findByEmail(email) != null) {
                request.setAttribute("emailError", "Email already exists");
            }
            if (password.isEmpty()) {
                request.setAttribute("passwordError", "Please enter a password");
            } else if (!password.equals(passwordConfirmation)) {
                request.setAttribute("passwordError", "Passwords do not match");
            }
            request.setAttribute("usernameInput", username);
            request.setAttribute("emailInput", email);
            request.setAttribute("reloaded", "true");
            try {
                request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
            return;
        }


        // create and save a new user
        User user = new User(username, email, password);

        // hash the password

        String hash = Password.hash(user.getPassword());

        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");

}
}
