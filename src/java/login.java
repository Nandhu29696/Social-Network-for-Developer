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

public class login extends HttpServlet {
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
            
            
            Statement st21 = con.createStatement();
            ResultSet rs21 = st21.executeQuery("select * from ratingstable where username='"+username+"'");
            
            if(rs21.next()) {
                 Statement st22 = con.createStatement();
            ResultSet rs22 = st22.executeQuery("select sum(ratings),sum(funratings) from ratingstable where username='"+username+"'");
             while(rs22.next()) {
                 ratings1 = Integer.parseInt(rs22.getString(1));
                 funrat1 = Integer.parseInt(rs22.getString(2));
             }
            }
            else
            {
                ratings1=0;
                funrat1=0;
            }
            st = con.createStatement();
            rs = st.executeQuery("select * from userdetails where username='"+username+"' && password='"+password+"'");
            if(rs.next()) {
              city = rs.getString(6);
                ArrayList al=null;
				ArrayList userList =new ArrayList();
				String query = "select * from userdetails where username not like '"+username+"'";
                                
				System.out.println("query " + query);
				st1 = con.createStatement();
				ResultSet  rs1 = st1.executeQuery(query);
                               
                           
				while(rs1.next())
				{
				System.out.println("Entered to loop");
                                al  = new ArrayList();
                                String tempfrnd = rs1.getString(2);
                                
                                String query11 = "select * from friends where f1='"+username+"'";
				System.out.println("query11 " + query11);
				st1 = con.createStatement();
                                
				ResultSet rs11 = st1.executeQuery(query11);
                               
                           	while(rs11.next())
				{
				System.out.println("Entered to loop");
                                
                                   System.out.println("Tempfrnd : "+tempfrnd);
                                temp1 = rs11.getString(2);
                                  //temp2 = rs11.getString(2);
                                System.out.println("Temp1 : "+temp1);
                                  if(tempfrnd.equals(temp1))
                                  {
                                  count =1;
                                
                                  }
                                                                                      
                                }
                                if(count != 1)
                                {
                                al.add(tempfrnd);
                                }
                                userList.add(al);
                                count=0;
                                }
                                
                                req.setAttribute("userList",userList);
                                
                                
               // String query11 = "select * from friends where f1='"+username+"'";
				//System.out.println("query11 " + query11);
				//st1 = con.createStatement();
                                
				//ResultSet rs11 = st1.executeQuery(query11);
                               ArrayList userList2 =new ArrayList();
                           	//while(rs11.next())
				//{
              // frnd = rs11.getString(2);
                                ArrayList a2=null;
				
				String query2 = "select * from postedcontent where username='"+username+"' ||  (domain='"+city+"' && receiver='"+username+"')";
				System.out.println("query2 " + query2);
				st2 = con.createStatement();
				ResultSet rs2 = st2.executeQuery(query2);
                               
                           	while(rs2.next())
				{
				System.out.println("Entered to loop");
                                a2  = new ArrayList();
				a2.add(rs2.getString(1));
                                 a2.add(rs2.getString(2));
                                 a2.add(rs2.getString(3));
                                    //al.add(rs1.getString(2));
				  //al.add(rs1.getString(3));
				 System.out.println("a2 :: "+a2);
				  userList2.add(a2);
				}
                                
                               // }
                                 System.out.print("Success2");
                                sn.setAttribute("city",city);
				req.setAttribute("userList2",userList2);
                                
                         /*       ArrayList a3=null;
				ArrayList userList3 =new ArrayList();
				String query3 = "select * from alertcontent where city='"+city+"'";
				System.out.println("query3 " + query3);
				st2 = con.createStatement();
				ResultSet rs3 = st2.executeQuery(query3);
                               
                           	while(rs3.next())
				{
				System.out.println("Entered to loop");
                                a3  = new ArrayList();
				a3.add(rs3.getString(1));
                                 a3.add(rs3.getString(2));
                                    //al.add(rs1.getString(2));
				  //al.add(rs1.getString(3));
				 System.out.println("a3 :: "+a3);
				  userList3.add(a3);
				}
                               
				req.setAttribute("userList3",userList3); */
            System.out.print("Success");
                rd=req.getRequestDispatcher("home.jsp");
            }
         
            else   if (username.equals("admin") && password.equals("admin")) {
                rd=req.getRequestDispatcher("adminpage.jsp");
            }
else{

                rd=req.getRequestDispatcher("login.jsp");
            }
	     rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
