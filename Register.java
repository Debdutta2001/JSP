package jsin.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/regForm")
public class Register extends HttpServlet {
	 @Override
     protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException {
    	
		 PrintWriter out = resp.getWriter();
		 
		 
		 String myname=req.getParameter("name1");
    	 String myemail=req.getParameter("email1");
    	 String mypass=req.getParameter("pass1");
    	 String mygen=req.getParameter("gender1");
    	 String mycity=req.getParameter("city1");
    	 
    	 try {
    		Class.forName("com.mysql.cj.jdbc.Driver"); 
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_demo" , "root", "root");
    		
    		PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
    		ps.setString(1, myname);
    		ps.setString(2, myemail);
    		ps.setString(3, mypass);
    		ps.setString(4, mygen);
    		ps.setString(5, mycity);
    		
    		int count=ps.executeUpdate();
    		if(count>0) {
    			
    			resp.setContentType("text/html");
    			out.print("<h3 style='color:green'> Successfully Registered</h3>");
    			RequestDispatcher rd= req.getRequestDispatcher("/register.jsp");
    			rd.include(req, resp);
    			
    		}else {
    			
    			resp.setContentType("text/html");
    			out.print("<h3 style='color:red'> Not Registered due to error</h3>");
    			RequestDispatcher rd= req.getRequestDispatcher("/register.jsp");
    			rd.include(req, resp);
    		}
    	 }
    	 catch(Exception e)
    	 {
    			resp.setContentType("text/html");
    			out.print("<h3 style='color:red'>exception occured</h3>");
    			RequestDispatcher rd= req.getRequestDispatcher("/register.jsp");
    			rd.include(req, resp);
    	 }
     }
}
