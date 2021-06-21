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
import model.StudentRegAuthent;
/**
 *
 * @author LENOVO
 */
public class StudentRegCheck extends HttpServlet 
{
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
     response.sendRedirect("student_registration.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        System.out.println("hello in check reg");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String phoneno=request.getParameter("phoneno");
        String password=request.getParameter("password");
        String dob=request.getParameter("dob");
        String address=request.getParameter("address");
        String gender=request.getParameter("gender");
        System.out.println(gender);

        StudentRegAuthent sta=new StudentRegAuthent();
        boolean registerst= sta.isRegister(username,email,phoneno,password,dob,address,gender);
    
        if(registerst)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            session.setAttribute("email",email);
            session.setAttribute("phoneno", phoneno);
            session.setAttribute("password", password);
            session.setAttribute("dob", dob);
            session.setAttribute("address", address);
            session.setAttribute("gender", gender);
            
            response.sendRedirect("student_login.html");
        }
        else
        {
            response.sendRedirect("student_registration.html");
        }
     
   }
}
