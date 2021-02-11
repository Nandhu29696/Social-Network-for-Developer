
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
 
public class AnsfromDB extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs2=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
             String ques= req.getParameter("ques");
	   
          //  String username= req.getParameter("username2");
         
         //String[] tweet1 = tweet.split("\\s+");
               
                int count = 0;
        	String frnd = "";
                String temp1="";
                // System.out.println("Tweet1 : "+tweet1);            
                String disastername = "";
                
                String ans="";
            
     sn.setAttribute("ques",ques);
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
           // st = con.createStatement();
            //int add=st.executeUpdate("insert into register values('"+fullname+"','"+username+"','"+password+"','"+prof+"','"+mobile1+"','"+emailid1+"','"+type1+"','"+1+"')");
         
            
           
             
                                ArrayList a2=null;
				ArrayList userList2 =new ArrayList();
				String query2 = "select * from serverdb where ques='"+ques+"'";
				System.out.println("query2 " + query2);
				st2 = con.createStatement();
				ResultSet rs2 = st2.executeQuery(query2);
                               
                           	while(rs2.next())
				{
				System.out.println("Entered to loop");
                                a2  = new ArrayList();
				a2.add(rs2.getString(1));
                                 a2.add(rs2.getString(2));
                                 ans = rs2.getString(2);
                                    //al.add(rs1.getString(2));
				 // a2.add(rs2.getString(3));
				 System.out.println("a2 :: "+a2);
				  userList2.add(a2);
				}
                                
                                
                                 System.out.print("Success2");
                               // sn.setAttribute("city",city);
				req.setAttribute("userList2",userList2);
                                
                        sn.setAttribute("ans",ans);
            System.out.print("Success");
                rd=req.getRequestDispatcher("ansfromserver.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}