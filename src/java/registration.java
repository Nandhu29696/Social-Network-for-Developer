import java.io.*;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.*;
import java.util.Random;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import sun.misc.BASE64Encoder;
@MultipartConfig(maxFileSize = 10177215)

public class registration extends HttpServlet {

Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    Statement st1=null;
    RequestDispatcher rd=null;
	
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
	   String fullname= req.getParameter("fullname");
            String username= req.getParameter("username");
          String password= req.getParameter("password");
           String age= req.getParameter("age");
            String prof= req.getParameter("prof");
         
            String domain= req.getParameter("domain");
        	
        	
		String mobile1= req.getParameter("mobile");
		String emailid1= req.getParameter("emailid");
                
               

	try {
	
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
            st = con.createStatement();
            int add=st.executeUpdate("insert into userdetails values('"+fullname+"','"+username+"','"+password+"','"+age+"','"+prof+"','"+domain+"','"+mobile1+"','"+emailid1+"')");
            
           String zero="1";
              st = con.createStatement();
            int add2=st.executeUpdate("insert into ratingstable values('"+username+"','"+domain+"','"+zero+"','"+zero+"','"+zero+"')");
          
            rd=req.getRequestDispatcher("login.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("registration.jsp");
        }
    }
}