package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteServlet", urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        DaoFactory.getAdsDao().deleteAdPost(id);
        request.getRequestDispatcher("/WEB-INF/deletead.jsp").forward(request, response);
    }
}
