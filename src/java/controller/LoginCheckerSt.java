/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.StudentLoginAuthent;

/**
 *
 * @author LENOVO
 */

public class LoginCheckerSt extends HttpServlet 
{

     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("student_login.html");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
     {     
         
          PrintWriter out = response.getWriter();                
          
         
        String username=request.getParameter("username");
        String password = request.getParameter("password");
        
        StudentLoginAuthent sla=new StudentLoginAuthent();
        boolean login = sla.isLoginStudent(username, password);

        if(login)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect("student_home.jsp");
        }
        else
        {   
            out.println("<html>");
            out.println("<body>");
            out.println("<span style=color:red><center>Number or password mismatch !!!</center></span>");
            out.println("</body>");
            out.println("</html>");
            RequestDispatcher rd = request.getRequestDispatcher("/student_login.html");
            rd.include(request, response);
           // response.sendRedirect("student_login.html");
        }
    }    
   
}
