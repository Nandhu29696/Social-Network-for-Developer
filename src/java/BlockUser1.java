
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author java.2
 */
public class BlockUser1 extends HttpServlet {
    String username="";
    String password="";
    String type1="",key="";
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        username = req.getParameter("username");
       
	
	HttpSession sn = req.getSession(true);
   //  sn.setAttribute("username",username);
     
		RequestDispatcher rd = null;
                
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from userdetails where username='"+username+"'");
            if(rs.next()) {
            
                 Statement st1 = con.createStatement();
            int add=st1.executeUpdate("insert into blockeduser values('"+username+"')");
           
                   
                rd=req.getRequestDispatcher("blocksuccess.jsp");
            }
            
            else {
  
               rd=req.getRequestDispatcher("blockfailure.jsp");
	        }
	     rd.forward(req,res);
        }
        catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}
