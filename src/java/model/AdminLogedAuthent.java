/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.MinorDatabase;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author LENOVO
 */
public class AdminLogedAuthent 
{
     public boolean isLogedAdmin(String adminusername,String adminpassword)
    {
        String tablePassword="";
        try 
        {
          Statement st=MinorDatabase.getStatement();
          String query = "Select adminpassword from admin where adminusername = '"+adminusername+"'";
          System.out.println("query="+query);
          ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablePassword=rs.getString(1);
            }
            else
            {
                return false;
            }
        } 
        catch (SQLException e) 
        {
            System.out.println(e);
        }
            System.err.println(tablePassword);
            System.err.println(adminusername);
            System.err.println(adminpassword);
            System.err.println(adminpassword.equals(tablePassword));

         if(adminusername!= null && adminpassword!=null && adminpassword.equals(tablePassword))
        {
            System.err.println("im in true statement");
            return true;
        }
         System.err.println("im in false statement");
        return false;
    }
    
}
