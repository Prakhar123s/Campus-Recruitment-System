/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author LENOVO
 */
public class MinorDatabase 
{
    static Connection con = null;
    static Statement st=null;
    static PreparedStatement pst=null;
    
    static
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","root");
            System.out.println("Connected");
            
            st = con.createStatement();

        } 
        catch (ClassNotFoundException e) 
        {
            System.out.println(e);
        } 
        catch (SQLException e) 
        {
            System.out.println(e);
        }
    }
    public static Connection getConnection()
    {
        return con;
    }
    
    public static Statement getStatement()
    {
          return st;
    }
    
    public static PreparedStatement getPreparedStatement()
    {
        return pst;
    }
    
  
}

   
