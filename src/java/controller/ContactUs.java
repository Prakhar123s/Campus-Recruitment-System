/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.MinorDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class ContactUs extends HttpServlet 
{

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
         String Fullaname=request.getParameter("FullName");
         String Email= request.getParameter("Email");
         String Message= request.getParameter("Message");
         
            try
            {
               
                Connection con=MinorDatabase.getConnection();
                PreparedStatement pst=con.prepareStatement("INSERT INTO ContactUs values(?,?,?)");
                
                pst.setString(1, Fullaname);
                pst.setString(2, Email);
                pst.setString(3,Message);
          
                int i=pst.executeUpdate();  
                System.out.println(i+" records inserted");
            
                if(i>=1)
                {
                    response.sendRedirect("contact_us.html");
                }
            
            }
            
           catch(SQLException e)
            {
                System.out.println(e);
            }
            
        }        
    }
    
