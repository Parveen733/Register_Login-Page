package com.parveen.profile;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/html");
	     PrintWriter out=resp.getWriter();
	     
	     String name2=req.getParameter("name1");
	     String email2=req.getParameter("email1");
	     String pass2=req.getParameter("pass1");
	     String mobile_no2=req.getParameter("mobile_no1");
           
	     try
	        {
	    	 
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/profiledemo","root","root");
	           
	            PreparedStatement ps=con.prepareStatement("insert into Register(name,email,password,mobile_no) values(?,?,?,?)");
	            ps.setString(1, name2);
	            ps.setString(2, email2);
	            ps.setString(3, pass2);
	            ps.setString(4, mobile_no2);
	           
	            
	            int i=ps.executeUpdate();
	            if(i>0)
	            {
	            	 HttpSession session=req.getSession();
	                 session.setAttribute("session_name", name2);
	                 session.setAttribute("session_email", email2);
	                 session.setAttribute("session_pass", pass2);
	                 session.setAttribute("session_mobile_no", mobile_no2);
	                 
	                 
	                 //session.setAttribute("session_title", "");
	                // session.setAttribute("session_skills", "");
	                 
	                 resp.sendRedirect("profile.jsp");
	            }
	            else
	            {
	                out.println("Failed");
	            }
	        }
	        catch(Exception e)
	        {
	           out.println(e); 
	        }
	    
	    
	     
	}

}
