
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
 
public class postans extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs2=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
             String ques= req.getParameter("ques");
             
             String ans= req.getParameter("ans");
	   
            String username= req.getParameter("username3");
            
            String domain= req.getParameter("city2");
            String confidentlevel= req.getParameter("confidentlevel");
            
            int score =0;
            if(confidentlevel.equals("confident"))
            {
                score++;
            }
         
         //String[] tweet1 = tweet.split("\\s+");
               
                int count = 0;
        	String frnd = "";
                String temp1="";
                String domain1="";
                // System.out.println("Tweet1 : "+tweet1);            
                String disastername = "";
            
     sn.setAttribute("username",username);
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
           // st = con.createStatement();
            //int add=st.executeUpdate("insert into register values('"+fullname+"','"+username+"','"+password+"','"+prof+"','"+mobile1+"','"+emailid1+"','"+type1+"','"+1+"')");
            
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedans values('"+ques+"','"+ans+"','"+username+"','"+domain+"','"+confidentlevel+"')");
            
             int totpost = 0;
           Statement st23 = con.createStatement();
            ResultSet rs23 = st23.executeQuery("select * from ratingstable where username='"+username+"'");
            if(rs23.next()) {
                totpost = Integer.parseInt(rs23.getString(5));
            }
            
            score = score +totpost;
            
            String query4 = "update ratingstable set confident = ? where username = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query4);
      preparedStmt.setInt   (1, score);
      preparedStmt.setString(2, username);

      // execute the java preparedstatement
      preparedStmt.executeUpdate();
            
            String query7 = "select * from userdetails where username='"+username+"'";
                                
				System.out.println("query7 " + query7);
				Statement st7 = con.createStatement();
				ResultSet  rs7 = st7.executeQuery(query7);
           while(rs7.next())
           {
              domain1 = rs7.getString(6);
           }
           
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
                                
                                
                String query11 = "select * from friends where f1='"+username+"'";
				System.out.println("query11 " + query11);
				st1 = con.createStatement();
                                
				ResultSet rs11 = st1.executeQuery(query11);
                               ArrayList userList2 =new ArrayList();
                           	while(rs11.next())
				{
               frnd = rs11.getString(2);
                                ArrayList a2=null;
				
				String query2 = "select * from postedcontent where domain='"+domain1+"' &&  (username='"+username+"' || username='"+frnd+"')";
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
                rd=req.getRequestDispatcher("userpage.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
             rd=req.getRequestDispatcher("failure.jsp");
        }
    }
}