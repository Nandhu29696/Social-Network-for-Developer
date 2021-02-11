<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Analyse Social Roles</title>
 <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="stacks.css" >
  <link rel="stylesheet" type="text/css" href="primary.css" >
  <link rel="stylesheet" type="text/css" href="product.css" >
  <link rel="stylesheet" type="text/css" href="channels.css" >
<style type="text/css">
<!--
.style4 {font-size: 18px}
.style5 {	color: #E1EAF1;
	font-size: 24px;
}
.style6 {font-size: 16px}
.style8 {font-size: 16px; font-weight: bold; }
.style21 {color: #687A66}
.style22 {font-size: medium;
	font-weight: bold;
}
.style22 {font-size: medium; font-weight: bold; color: #687A66; }
.style23 {color: #CC3333;
	font-size: 24px;
}
-->
</style>
<script type="text/javascript">
function check()
{
if(document.getElementById("username").value=="")
{
alert("Username must not be empty");
//document.form1.username.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}
else
{
return true;
}
}
</script>
</head>
<body>
<div class="main">
  <header class="top-bar js-top-bar top-bar__network _fixed" style="border-top: green;">
    <div class="wmx12 mx-auto grid ai-center h100" role="menubar">
            <ol class="list-reset grid gs4" role="presentation">
                <li class="grid--cell">
                    <a href="index.jsp"
                        class="-marketing-link is-selected js-gps-track js-Home-menu" style="background-color: green;">
                        Home
                    </a>
                </li>

                    <li class="grid--cell md:d-none">
                        <a href="login.jsp" class="-marketing-link js-gps-track">Service</a>
                    </li>
                    <li class="grid--cell md:d-none">
                        <a href="/teams/use-cases" class="-marketing-link js-gps-track"
                           data-gps-track="top_nav.Home.click({location:1, destination:8})"
                           data-ga="[&quot;top navigation&quot;,&quot;use cases menu click&quot;,null,null,null]">About</a>
                    </li>
            </ol>
            
          <ol class="overflow-x-auto ml-auto -secondary grid ai-center list-reset h100 user-logged-out" role="presentation">
        <li class="-item searchbar-trigger"><a href="#" class="-link js-searchbar-trigger" role="button" aria-label="Search" aria-haspopup="true" aria-controls="search" title="Click to show search"><svg aria-hidden="true" class="svg-icon iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="M18 16.5l-5.14-5.18h-.35a7 7 0 1 0-1.19 1.19v.35L16.5 18l1.5-1.5zM12 7A5 5 0 1 1 2 7a5 5 0 0 1 10 0z"/></svg></a></li>
        
            <li class="-ctas">
                        <a href="index.jsp" class="login-link s-btn s-btn__primary py8" rel="nofollow" data-ga="[&quot;sign up&quot;,&quot;Sign Up Navigation&quot;,&quot;Header&quot;,null,null]">Logout</a>

            </li>
  </header>
  <div class="body">
    <div class="body_resize">
      <div align="center">
        <h2 align="center" style=" padding-top: 70px;">Admin Page </h2>
        <table width="593" height="224" border="0" align="center">
          <tr>
            <td height="52" colspan="3" bgcolor="#F3F3F5"><div align="center"><span class="style23">View Fun Rated Users </span></div></td>
          </tr>
          <tr>
            <td width="177" bordercolor="#FFFFFF"><div align="center" class="style22">Username</div></td>
            <td width="234" bordercolor="#FFFFFF"><div align="center" class="style21"><span class="style22">Domain</span></div></td>
            <td width="168" bordercolor="#FFFFFF"><div align="center"><span class="style22">Fun Ratings Count  </span></div></td>
          </tr>
          <%
                                        try {
                                         
							//String username, user;
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            int rate=3;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
                                            String query = "select * from ratingstable where funratings>='"+rate+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
                                                String s1 = rs.getString(1);
                                                String s2 = rs.getString(2);
												String s3 = rs.getString(4);
												
                                    %>
          <tr>
            <td><div align="center"><%=s1%></div></td>
            <td><div align="center"><%=s2%></div></td>
            <td><div align="center"><%=s3%></div></td>
          </tr>
          <tr>
            <td colspan="3"><div align="center"></div></td>
          </tr>
          <%

                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println(e);
                                        }

                                    %>
        </table>
        <p align="center">&nbsp;</p>
        <form id="form1" name="form1" method="post" action="BlockUser1">
          <div align="center">
                  <table width="384" height="202" border="0">
                    <tbody>
                      <tr>
                        <td height="52" colspan="2" bgcolor="#666666"><div align="center"><span class="style5">Deactivate User </span></div></td>
                      </tr>
                        <tr height="30"></tr>
                      <tr>
                        <td height="70"><h3 class="style4">User name </h3></td>
                        <td><label>
                        <input name="username" type="text" id="username" />
                        </label></td>
                      </tr>
                      
                      <tr>
                        <td height="72" colspan="2"><div align="center">
                            <label>
                            <input type="submit" name="Submit2" value="Deactivate" onclick="return check();"/>
                            </label>
                        </div></td>
                      </tr>
                    </tbody>
                  </table>
          </div>
        </form>
      
      </div>
      
      <div class="clr"></div>
    </div>
  </div>
  
  
</body>
</html>
