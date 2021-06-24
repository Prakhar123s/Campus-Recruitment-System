/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class OtpCheckerCoordinator extends HttpServlet 
{

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       String otp=request.getParameter("otp");
       System.err.println("otp from html page:"+otp);
       //String recivedotp=request.getParameter("otprecived");
       //System.err.println("otp in hidden form:"+recivedotp);
  
        HttpSession session=request.getSession(true);  
        String otpreciver=(String)session.getAttribute("MailOtp");
        System.err.println("Hewllo the otp is :"+otpreciver);
       
       if(otp.equals(otpreciver))
       {
          response.sendRedirect("reset_passwordcoordinator.jsp");
       }
       else
       {
           response.sendRedirect("otp_varificationcoordinator.jsp");
       }

        
    }
    
  
}
