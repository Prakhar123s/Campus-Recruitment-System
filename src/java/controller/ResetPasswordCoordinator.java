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
import db.MinorDatabase;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author LENOVO
 */
public class ResetPasswordCoordinator extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String newPassword=request.getParameter("newPassword");
        String confirmPassword=request.getParameter("confirmPassword");
        
         HttpSession session=request.getSession(true);  
         String useremail=(String)session.getAttribute("email");
         
         System.err.println("email is:"+useremail);
         
        
        if(newPassword.equals(confirmPassword))
        {
            try
            {
            Statement st= MinorDatabase.getStatement();
            String query = "UPDATE coordinator set password='"+newPassword+"' where email='"+useremail+"' ;";
            
          
            int i = st.executeUpdate(query);
                System.err.println("Query:"+query);
            if(i>0)
            {
                System.out.println(i+" Record updated..");
                response.sendRedirect("coordinator_login.html");
            }
            else
            {
                System.out.println("Record Updation Failed...");
                response.sendRedirect("forgot_password_coordinator.jsp");
            }
           
        } 
        catch(SQLException e)
        {
          System.out.println(e);

        }

        }
        else{
            response.sendRedirect("reset_passwordcoordinator.jsp");
        }
    }

    
}
