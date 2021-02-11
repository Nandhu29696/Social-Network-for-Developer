/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java.2
 */

public class AdminLogin1 extends HttpServlet {
    String username="";
    String password="";
    Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs1=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        username = req.getParameter("username");
        password = req.getParameter("password");
       String city="";
       int ratings1=0;
       int funrat1=0;
	
	HttpSession sn = req.getSession(true);
     sn.setAttribute("username",username);
   
     int count =0 ;
     String temp1="";
     String frnd="";
		RequestDispatcher rd = null;
                
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
           
            st = con.createStatement();
            rs = st.executeQuery("select * from admintable where username='"+username+"' && password='"+password+"'");
            if(rs.next()) {
             
                        
            System.out.print("Success");
                rd=req.getRequestDispatcher("adminpage.jsp");
            }
         
            else {
  
               rd=req.getRequestDispatcher("failure1.jsp");
	        }
	     rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
