package com.dabing.week6.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RedirectServlet", value = "/redirect")
public class RedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // redirect - same server - Relative URL
        // 1. start without
        System.out.println("before redirect ");
        //response.sendRedirect("index.jsp");//url

        //2. start with
        System.out.println("after redirect ");
        //response.sendRedirect("/2019211001000704DongShiqi_war_exploded/index.jsp");
        response.sendRedirect("https://www.baidu.com");

        //redirect - another server - Absolute URL
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}