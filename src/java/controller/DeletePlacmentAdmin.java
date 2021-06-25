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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class DeletePlacmentAdmin extends HttpServlet {

    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
            String companyname=request.getParameter("companyname");
            try
            {
               
                Connection con=MinorDatabase.getConnection();
                Statement   st = con.createStatement();

            String query = "DELETE FROM placement where compname='"+companyname+"' ";
                System.err.println("query"+query);

            int i = st.executeUpdate(query);

            if(i>0)
            {
                System.out.println(i+" Record Deleted..");
            }
            else
            {
                System.out.println("Record Deletion Failed...");
            }
           response.sendRedirect("campus_placements.jsp");
//            con.close();
        }
            
            
         catch (SQLException e) 
        {
            System.out.println(e);
        }
    }
}

