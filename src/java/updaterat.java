
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
 
public class updaterat extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs2=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
            
            String username = sn.getAttribute("username").toString();
     
             String tweet= req.getParameter("quesq");
             
             String answer= req.getParameter("answer");
	   
            String user= req.getParameter("user");
            
            String dom= req.getParameter("dom");
            
            String ratings= req.getParameter("ratings");
            
            String fun= req.getParameter("fun");
            
             String bookmark= req.getParameter("bookmark");
         
         //String[] tweet1 = tweet.split("\\s+");
               
                int count = 0;
        	String frnd = "";
                String temp1="";
                // System.out.println("Tweet1 : "+tweet1);            
                String disastername = "";
            
     //sn.setAttribute("username",username);
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
            //st = con.createStatement();
          //  int add=st.executeUpdate("insert into ratingstable values('"+username+"','"+dom+"','"+ratings+"','"+fun+"')");
         
            if(bookmark.equals("bookmark"))
            {
                 st1 = con.createStatement();
            int add=st1.executeUpdate("insert into bookmarked values('"+username+"','"+dom+"','"+tweet+"','"+answer+"','"+user+"')");
          
            }
            
            int score = Integer.parseInt(ratings);
            int score1 = Integer.parseInt(fun);
            
            int ratings1 = 0;
            int fun1=0;
           Statement st23 = con.createStatement();
            ResultSet rs23 = st23.executeQuery("select * from ratingstable where username='"+user+"'");
            if(rs23.next()) {
                ratings1 = Integer.parseInt(rs23.getString(3));
                fun1 = Integer.parseInt(rs23.getString(4));
            }
            
            score = score +ratings1;
            score1 = score1 +fun1;
            
             String query4 = "update ratingstable set ratings = ?, funratings = ? where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query4);
      preparedStmt.setInt   (1, score);
      preparedStmt.setInt   (2, score1);
      preparedStmt.setString(3, user);

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
             
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
                rd=req.getRequestDispatcher("userpage2.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}