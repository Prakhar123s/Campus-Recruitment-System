/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CoordinatorLoginAuthent;
import model.StudentLoginAuthent;

/**
 *
 * @author LENOVO
 */
public class CoordinatorLoginChecks extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("coordinator_login.html");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String username=request.getParameter("username");
        String password = request.getParameter("password");
        
           CoordinatorLoginAuthent cla=new CoordinatorLoginAuthent();
           boolean cologed = cla.isCoordinatorLogged(username, password);
        
        if(cologed)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect("coordinator_home.jsp");
        }
        else
        {
            response.sendRedirect("coordinator_login.html");
        }
    }    
   
}
