package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "SearchBarServlet", urlPatterns = "/search")
public class SearchBarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
        } else {
            String searchInput = req.getParameter("search");
            req.setAttribute("ad", DaoFactory.getAdsDao().findByTitle(searchInput));
            req.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(req, resp);
        }
    }

}
