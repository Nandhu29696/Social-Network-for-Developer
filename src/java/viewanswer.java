
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
 
public class viewanswer extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs2=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
             String tweet= req.getParameter("ques1");
	   
            String username= req.getParameter("username2");
         
         //String[] tweet1 = tweet.split("\\s+");
               
                int count = 0;
        	String frnd = "";
                String temp1="";
                // System.out.println("Tweet1 : "+tweet1);            
                String disastername = "";
            
     sn.setAttribute("username",username);
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
           // st = con.createStatement();
            //int add=st.executeUpdate("insert into register values('"+fullname+"','"+username+"','"+password+"','"+prof+"','"+mobile1+"','"+emailid1+"','"+type1+"','"+1+"')");
         
            
           
             
                                ArrayList a2=null;
				ArrayList userList2 =new ArrayList();
				String query2 = "select * from postedans where ques='"+tweet+"'";
				System.out.println("query2 " + query2);
				st2 = con.createStatement();
				ResultSet rs2 = st2.executeQuery(query2);
                               
                           	while(rs2.next())
				{
				System.out.println("Entered to loop");
                                a2  = new ArrayList();
				a2.add(rs2.getString(1));
                                 a2.add(rs2.getString(2));
                                    //al.add(rs1.getString(2));
				  a2.add(rs2.getString(3));
                                  a2.add(rs2.getString(4));
                                   a2.add(rs2.getString(5));
				 System.out.println("a2 :: "+a2);
				  userList2.add(a2);
				}
                                
                                
                                 System.out.print("Success2");
                               // sn.setAttribute("city",city);
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
                rd=req.getRequestDispatcher("userpage1.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}