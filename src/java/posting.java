
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.text.DecimalFormat;
import java.util.ArrayList;
 
public class posting extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null,st2=null;
    ResultSet rs=null,rs2=null;
    RequestDispatcher rd=null;
    int flag = 0;
    String domain = "";
    String domain1="";
     String[] stopWrds={"i", "a", "about","an","are","as","at","be","by","com","for","from","how","in", "is","it",
                 "of","on","or","that","the","this","to","was","what","when","where","who","will","with"};
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
             String tweet= req.getParameter("tweet");
	   
            String username= req.getParameter("username");
         
         String[] tweet1 = tweet.split(" ");
                
                int count = 0;
                int count1=0;
                int count2=0;
                int count3=0;
                int count4=0;
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
           
             st = con.createStatement();
           ResultSet rs56 = st.executeQuery("select * from userdetails where username='"+username+"'");
            if(rs56.next()) {
              domain = rs56.getString(6);
            }
            for(int k=0;k<tweet1.length;k++)
            {
           
                 System.out.println("The strings are : "+tweet1[k]);
                // sb1.append(s1+" ");
            String query4 = "select * from ckeywords where keywords='"+tweet1[k]+"'";
                                
				System.out.println("query4 " + query4);
				Statement st4 = con.createStatement();
				ResultSet  rs4 = st4.executeQuery(query4);
           while(rs4.next())
           {
               count1=count1+1;
           }
           
           String query5 = "select * from cppkeywords where cppkeywords='"+tweet1[k]+"'";
                                
				System.out.println("query5 " + query5);
				Statement st5 = con.createStatement();
				ResultSet  rs5 = st5.executeQuery(query5);
           while(rs5.next())
           {
               count2=count2+1;
           }
           
           String query6 = "select * from javakeywords where keywords='"+tweet1[k]+"'";
                                
				System.out.println("query6 " + query6);
				Statement st6 = con.createStatement();
				ResultSet  rs6 = st6.executeQuery(query6);
           while(rs6.next())
           {
               count3=count3+1;
           }
           String query7 = "select * from pythonkeywords where keywords='"+tweet1[k]+"'";
                                
				System.out.println("query7 " + query7);
				Statement st7 = con.createStatement();
				ResultSet  rs7 = st7.executeQuery(query7);
           while(rs7.next())
           {
               count3=count3+1;
           }
             
            }
            
             Statement st21 = con.createStatement();
            ResultSet rs21 = st21.executeQuery("select * from userdetails where domain='"+domain+"' && username not like '"+username+"'");
            while(rs21.next()) {
           String receiver = rs21.getString(2);
           System.out.println("Receiver : "+receiver);
           int totpost = 1;
           Statement st23 = con.createStatement();
            ResultSet rs23 = st23.executeQuery("select count(receiver) from postedcontent where receiver='"+receiver+"'");
            if(rs23.next()) {
                totpost = rs23.getInt(1);
            }
           
           int ratings=1;
           int fun=1;
           int confident=1;
           Statement st22 = con.createStatement();
            ResultSet rs22 = st22.executeQuery("select * from ratingstable where username='"+receiver+"'");
            if(rs22.next()) {
                ratings = Integer.parseInt(rs22.getString(3));
                fun = Integer.parseInt(rs22.getString(4));
                confident = Integer.parseInt(rs22.getString(5));
           
            }
            
            double ratings1 = (double)((double)ratings/(double)totpost);
             double fun1 = (double)((double)fun/(double)totpost);
              double confident1 = (double)((double)confident/(double)totpost);
              System.out.println("Ratings :"+ratings1+","+fun1+","+confident1);
              int bestcount=0;
              
              if(ratings1>=0.5)
              {
                  bestcount++;
              }
              if(fun1<=0.5)
              {
                  bestcount++;
              }
              
              if(confident1>=0.5)
              {
                  bestcount++;
              }
              
              int block=0;
              Statement st33 = con.createStatement();
            ResultSet rs33 = st33.executeQuery("select * from blockeduser where username='"+receiver+"'");
            if(rs33.next()) {
                
                block++;
            }
              
              if(bestcount>1 && block==0)
              {
            if(count1>0)
            {
                domain = "c";
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedcontent values('"+username+"','"+tweet+"','"+domain+"','"+receiver+"')");
            
            }
            if(count2>0)
            {
                domain = "cpp";
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedcontent values('"+username+"','"+tweet+"','"+domain+"','"+receiver+"')");
            
            }
            if(count3>0)
            {
                domain = "java";
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedcontent values('"+username+"','"+tweet+"','"+domain+"','"+receiver+"')");
            
            }
            if(count4>0)
            {
                domain = "python";
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedcontent values('"+username+"','"+tweet+"','"+domain+"','"+receiver+"')");
            
            }
            if(count1==0 && count2==0 && count3==0 && count4==0)
            {
                 domain = "general";
            st1 = con.createStatement();
            int add=st1.executeUpdate("insert into postedcontent values('"+username+"','"+tweet+"','"+domain+"','"+receiver+"')");
           
            }
            }
            }
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
                                
                                
               // String query11 = "select * from friends where f1='"+username+"'";
				//System.out.println("query11 " + query11);
				//st1 = con.createStatement();
                                
				//ResultSet rs11 = st1.executeQuery(query11);
                               ArrayList userList2 =new ArrayList();
                           	//while(rs11.next())
				//{
              // frnd = rs11.getString(2);
                                ArrayList a2=null;
				
				String query2 = "select * from postedcontent where username='"+username+"' ||  (domain='"+domain+"' && receiver='"+username+"')";
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