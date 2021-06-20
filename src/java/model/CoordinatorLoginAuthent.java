/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.MinorDatabase;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author LENOVO
 */
public class CoordinatorLoginAuthent 
{
    public boolean isCoordinatorLogged(String username,String password)
    {
        String tablePassword="";
        try 
        {
          Statement st=MinorDatabase.getStatement();
          String query = "Select password from coordinator where username = '"+username.trim()+"'";
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
        catch (Exception e) 
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
