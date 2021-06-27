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

public class Applicationform extends HttpServlet 
{

    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
         String studentfirstname=request.getParameter("studentfirstname");
         String studentlastname= request.getParameter("studentlastname");
         String studentaddress= request.getParameter("studentaddress");
         String studentenrollment= request.getParameter("studentenrollment");
         String studentphoneno= request.getParameter("studentphoneno");
         String studentemailaddress= request.getParameter("studentemailaddress");
         String studentdepartment= request.getParameter("studentdepartment");
         String studentcourse= request.getParameter("studentcourse");
         String studentinsitute= request.getParameter("studentinsitute");
         
            try
            {
               
                Connection con=MinorDatabase.getConnection();
                PreparedStatement pst=con.prepareStatement("INSERT INTO studentpllacementdtls values(?,?,?,?,?,?,?,?,?)");
                
                pst.setString(1, studentfirstname);
                pst.setString(2, studentlastname);
                pst.setString(3,studentaddress);
                pst.setString(4, studentenrollment);
                pst.setString(5, studentphoneno);
                pst.setString(6,studentemailaddress );
                pst.setString(7, studentdepartment);
               
                pst.setString(8, studentcourse);
                pst.setString(9,studentinsitute );
            
                int i=pst.executeUpdate();  
                System.out.println(i+" records inserted");
            
                if(i>=1)
                {
                    response.sendRedirect("view_placement.jsp");
                }
            
            }
            
           catch(SQLException e)
            {
                System.out.println(e);
            }
            
            
        }     
 
  
    }

    

