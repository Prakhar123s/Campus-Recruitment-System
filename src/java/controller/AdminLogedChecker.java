/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminLogedAuthent;

/**
 *
 * @author LENOVO
 */
public class AdminLogedChecker extends HttpServlet 
{
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("admin_login.html");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String adminusername=request.getParameter("adminusername");
        String adminpassword = request.getParameter("adminpassword");
        
        AdminLogedAuthent la=new AdminLogedAuthent();
        boolean loged = la.isLogedAdmin(adminusername, adminpassword);
        
        if(loged)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("adminusername", adminusername);
            response.sendRedirect("admin_home.jsp");
        }
        else
        {
            response.sendRedirect("admin_login.html");
        }
    }    
   
}
