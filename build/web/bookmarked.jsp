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
<body class="home-page unified-theme"> 

  <header class="top-bar js-top-bar top-bar__network _fixed">
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
              <li class="-item" style="padding:10px;">
                  
                <div class="gravatar-wrapper-24" title="<%=session.getAttribute("username")%>"><img src="images/img2.jpg" alt="" width="24" height="24" class="bar-sm -avatar js-avatar-me">
             </div> 
              </li>
        <li class="-ctas">
                        <a href="index.jsp" class="login-link s-btn s-btn__filled py8 js-gps-track" rel="nofollow"
                           data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log out</a>
        </li>
          </ol>
  </header>
   
    <div class="container wmx100 w100 p-ff-source">
    <div id="left-sidebar" data-is-here-when class="left-sidebar js-pinned-left-sidebar ps-relative">
    <div class="left-sidebar--sticky-container js-sticky-leftnav">
        <nav role="navigation">
            <ol class="nav-links">
    <li class=" youarehere">
        <a
            href="home.jsp"
            class="pl8 js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:true, location:1, destination:8})">
Home        </a>
    </li>
                <li>
                    <ol class="nav-links">
                            <li class="fs-fine tt-uppercase ml8 mt16 mb4 fc-light">Public</li>
                            
    <li>
        <a id="nav-tags"
            href="aaa.jsp"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:2})">
Q&A        </a>
    </li>
    <li>
        <a id="nav-users"
            <a href="#for-book"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:3})">
            bookmarks        </a>
    </li>
    <li>
        <a id="nav-jobs"style="padding-bottom:20px;"
            href="/jobs?so_medium=StackOverflow&amp;so_source=SiteNav"
            class=" js-gps-track nav-links--link"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:6})">
Friends Suggestions       </a>
         <li align="center">No Record Avaliable </li>
          
    </li>
  </ol>
 </li>
</ol>
</nav>
        
</div>


</div>
       <div id="content" class="w100 wmx100 p0 snippet-hidden" >
  <div style="background-color: #d7d9db">
   <div class="div6-1" >  
        <h2 align="center"><a href="index.html">Analysis Social Roles</a></h2>
        <h2 align="center">User Page </h2>
        <table width="970" height="224" border="0" >
          <tr>
            <td height="52" colspan="5" bgcolor="#d7d9db"><div align="center"><span class="style23">View Book-marked Answers </span></div></td>
          </tr>
          <tr>
            <td width="186" bordercolor="#FFFFFF"><div align="center" class="style22">Username</div></td>
            <td width="70" bordercolor="#FFFFFF"><div align="center" class="style21"><span class="style22">Domain</span></div></td>
            <td width="167" bordercolor="#FFFFFF"><div align="center"><span class="style22">Question</span></div></td>
            <td width="655" bordercolor="#FFFFFF"><div align="center"><span class="style22">Answer</span></div></td>
            <td width="93" bordercolor="#FFFFFF"><div align="center"><span class="style22">Answerer</span></div></td>
          </tr>
          <%
                                        try {
                                         
							//String username, user;
							String username = session.getAttribute("username").toString();
        PreparedStatement ps;
        ResultSet rs;
		//Connection con = null;
		Statement st,st1,st2,st3,st4;
                                            int rate=3;
                                            Class.forName("com.mysql.jdbc.Driver");
                                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos","root","password");
                                            String query = "select * from bookmarked where username='"+username+"'"; 
                                            st = con.createStatement();
                                            rs = st.executeQuery(query);

                                            while (rs.next()) {
                                                
                                                String s1 = rs.getString(1);
                                                String s2 = rs.getString(2);
												String s3 = rs.getString(3);
												String s4 = rs.getString(4);
												String s5 = rs.getString(5);
												
                                    %>
          <tr>
            <td><div align="center"><%=s1%></div></td>
            <td><div align="center"><%=s2%></div></td>
            <td><div align="center"><%=s3%></div></td>
            <td><div align="center"><%=s4%></div></td>
            <td><div align="center"><%=s5%></div></td>
          </tr>
          <tr>
            <td colspan="5"><div align="center"></div></td>
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
        </form>
        <p align="center" class="style6">&nbsp;</p>
      
     
    </div>
  </div>    </div>

        </div>
  <footer id="footer" class="site-footer js-footer" role="contentinfo">
        <div class="site-footer--container">
                <nav class="site-footer--nav">
                    <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                        <h5 class="-title" id="for-about">About</h5>
                        <div class="grid--cell wmx3 md:ta-center md:p270 md:pr24" >
                
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Most trusted online community for anyone that codes to learn, share their knowledge, and build their careers. More than 50 million unique visitors come to Stack Overflow each month to help solve coding problems, develop new skills, and find job opportunities..
                        </div>
                    </div>
                <div class="site-footer--categories">
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology">
        </div>
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
        </div>
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts"></div>
         <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
        </div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
    </div><div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Other">
        
    </div>
                </div>
            </nav>
            <div class="site-footer--copyright fs-fine">
                
                <p class="mt-auto mb24"> <h5 class="-title" id="for-about">Contact us</h5>
site design / logo &#169; 2020 Stack Exchange Inc; user contributions licensed under cc by-sa 4.0
                            with attribution required.
                    <span id="svnrev">rev&nbsp;2020.3.17.36298</span>
                </p>
            </div>
        </div>

            </footer>
 
</body>
</html>
