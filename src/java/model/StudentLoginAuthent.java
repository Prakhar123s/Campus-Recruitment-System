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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author LENOVO
 */
public class StudentLoginAuthent extends HttpServlet 
{
    public boolean isLoginStudent(String username,String password)
    {
        String tablePassword="";
        try 
        {
          Statement st=MinorDatabase.getStatement();
          String query = "Select password from student where enrollment = '"+username.trim()+"'";
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
         if(username!=null && password!=null && password.equals(tablePassword))
        {
            return true;
        }
        return false;
    }
}
