/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.parveen.profile;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author py742
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       resp.setContentType("text/html");
       
        PrintWriter out=resp.getWriter();
        
        String email2=req.getParameter("email1");
        String pass2=req.getParameter("pass1");
        System.out.println(email2);
        System.out.println(pass2);
         try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/profiledemo","root","root");
            
            PreparedStatement ps=con.prepareStatement("select * from register where email=? and password=?");
        
            ps.setString(1,email2);
            ps.setString(2,pass2);
            
            ResultSet rs=ps.executeQuery();
             if(rs.next())
            {
                String name2=rs.getString("name");
                String mobile2=rs.getString("mobile_no");
               HttpSession session=req.getSession();
                session.setAttribute("session_name", name2);
                session.setAttribute("session_email", email2);
                session.setAttribute("session_mobile_no", mobile2);
                resp.sendRedirect("profile.jsp");
            }
             else{
                
                 resp.sendRedirect("login.jsp");
             }
        }
          catch(Exception e)
        {
            e.printStackTrace();
        }
    }

 
}
