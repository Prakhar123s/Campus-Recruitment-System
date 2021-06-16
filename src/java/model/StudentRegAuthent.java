/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.StudentRegCheck;
import db.MinorDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author LENOVO
 */
public class StudentRegAuthent 
{
      public boolean isRegister(String username, String email, String phoneno, String password, String dob, String address, String gender)
    {
            try
            {
               
                Connection con=MinorDatabase.getConnection();
                PreparedStatement pst=con.prepareStatement("INSERT INTO student values(?,?,?,?,?,?,?)");
                
                pst.setString(1, username);
                pst.setString(2, email);
                pst.setString(3, phoneno);
                pst.setString(4, password);
                pst.setString(5, dob);
                pst.setString(6, address);
                pst.setString(7, gender);
                int i=pst.executeUpdate();  
                System.out.println(i+" records inserted");
            }
            
           catch(SQLException e)
            {
                System.out.println(e);
            }
            
            if(username!=null && email!=null && phoneno!=null && password!=null && dob!=null)
            {
                System.out.println("true");
                return true;
            }
            return false;
        }     
}
