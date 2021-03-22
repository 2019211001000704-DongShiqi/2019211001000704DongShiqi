package com.dabing.week3.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

//automatic -new --> servlet
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// request come here-<from method=post>
        //get parameter from request
        String username = request.getParameter("username");//name of input type-<input type="text" name="username" required><br/>
        String password= request.getParameter("password");//<input type="password" name="password" required><br/>
        String email = request.getParameter("email");//<input type="email" name="email" required><br/>
        String gender = request.getParameter("gender");// <input name="sex" type="radio" value="Male"/>Male
        String birthDate = request.getParameter("birthDate");//birthday : <input type="datetime-local" name="yyyy-mm-dd"required><br/>


        //print - write into response
        PrintWriter writer = response.getWriter();
        writer.println("<br>username:"+username);
        writer.println("<br>password:"+password);
        writer.println("<br>email:"+email);
        writer.println("<br>gender:"+gender);
        writer.println("<br>birthDate:"+birthDate);
        writer.close();
    }
}
