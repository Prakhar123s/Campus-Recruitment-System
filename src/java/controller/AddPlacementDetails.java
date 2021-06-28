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
public class AddPlacementDetails extends HttpServlet 
{

   
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String companyname= request.getParameter("cname");
        String departmentname=request.getParameter("dname");
        String placementdtls=request.getParameter("pname");
        try
            {
               
                Connection con=MinorDatabase.getConnection();
                PreparedStatement pst=con.prepareStatement("INSERT INTO placement values(?,?,?)");
                
                pst.setString(1, companyname);
                pst.setString(2, departmentname);
                pst.setString(3, placementdtls);
                int i=pst.executeUpdate();  
                System.out.println(i+" records inserted");
                
                if(i>=1)
                {
                    response.sendRedirect("add_placement.jsp");
     
                }
            }
            
           catch(SQLException e)
            {
                System.out.println(e);
            }
           }
    
}
