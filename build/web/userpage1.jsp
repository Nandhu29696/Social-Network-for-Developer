<%@ page language="java" import="java.util.*,java.io.*,java.util.ArrayList,java.lang.*,java.sql.*;"%> 
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
.style6 {font-size: 16px}
.style18 {font-size: x-large;
	color: #990000;
}
.style19 {color: #FFFFFF}
.style10 {font-size: 18px; color: #FFFFFF; }
.style21 {color: #FFFFFF;
	font-size: 24px;
}
.style22 {font-size: 36px}
-->
</style>
</head>
<body class="home-page unified-theme">

  <header class="top-bar js-top-bar top-bar__network _fixed" style="border-top: green;">
    <div class="wmx12 mx-auto grid ai-center h100" role="menubar">
            <ol class="list-reset grid gs4" role="presentation">
                <li class="grid--cell">
                    <a href="home.jsp"
                        class="-marketing-link is-selected js-gps-track js-Home-menu" style="background-color: green;">
                        Home
                    </a>
                </li>

                    <li class="grid--cell md:d-none">
                        <a href="userpage.jsp" class="-marketing-link js-gps-track">Service</a>
                    </li>
                    <li class="grid--cell md:d-none">
                        <a  href="#for-about" class="-marketing-link js-gps-track">About</a>
                    </li>
            </ol>
          <ol class="overflow-x-auto ml-auto -secondary grid ai-center list-reset h100 user-logged-out" role="presentation">
            <li class="-item">
                <a href="#" class="my-profile js-gps-track" data-gps-track="profile_summary.click()">
                <div class="gravatar-wrapper-24" title="<%=session.getAttribute("username")%>"><img src="images/img2.jpg" alt="" width="24" height="24" class="bar-sm -avatar js-avatar-me">
             </div> 

        <li class="-ctas">
                        <a href="index.jsp" class="login-link s-btn s-btn__filled py8 js-gps-track" rel="nofollow"
                           data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log out</a>
        </li>
  </header>
    <div class="container wmx100 w100 p-ff-source">
    <div id="left-sidebar" data-is-here-when class="left-sidebar js-pinned-left-sidebar ps-relative">
    <div class="left-sidebar--sticky-container js-sticky-leftnav">
        <nav role="navigation">
            <ol class="nav-links">
    <li class=" youarehere">
        <a
            href="/"
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
            href="aaa.jsp"
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
       
    </li>
  </ol>
 </li>
</ol>
</nav>
    </div>
    </div>
        <div id="content" class="w100 wmx100 p0 snippet-hidden" >
        <div style="background-color: #d7d9db" >
    <div class="div6-1" >  
        <h2 align="center"><a href="index.html">Analysis Social Roles</a></h2>
        
          <div align="center">
            <table width="100%"  align="center" style="border:1px solid #000000;">
              <tr>
                <td colspan="7" align="center" height="10"></td>
              </tr>
              <tr bgcolor="#626D1D">
                <td height="42" colspan="8" align="center" bgcolor="#626D1D" class="style18 style1 style19"> Posted Questions with Answers </td>
              </tr>
              <tr>
                <td colspan="8" align="center" height="10"></td>
              </tr>
              <tr align="center" valign="middle" bgcolor="#89723A" style="font-weight:bold;">
                <td width="95" height="37"><span class="style19">Question</span></td>
                <td width="170"><span class="style19">Answer</span></td>
				 <td width="149" height="37"><span class="style19">Answerer Name </span></td>
				 <td width="149" height="37"><span class="style19">Domain</span></td>
				 <td width="149" height="37"><span class="style19">Confident</span></td>
				 <td width="149" height="37"><span class="style19">Ratings</span></td>
				 <td width="149" height="37"><span class="style19">Fun Answers</span></td>
				  <td width="149" height="37"><span class="style19">Bookmark</span></td>
              </tr>
              <%
	String bgcolor4="";
	int count4=0;
	List viewList4 = new ArrayList();
	Iterator  viewItr4;
	String user55 = session.getAttribute("username").toString();
	if(request.getAttribute("userList2")!=null && request.getAttribute("userList2")!="")
	{
		List userList4 =  (ArrayList)request.getAttribute("userList2");
		Iterator itr4 = userList4.iterator();
		
		while(itr4.hasNext())
		{
			
			if(count4%2==0)
			{
			// bgcolor = "#C8E2D1";
			}
			else
			{
				
				//bgcolor = "#EAF8EF";
			}
			
			viewList4 = (ArrayList)itr4.next();
			String quesq = viewList4.get(0).toString();
			String answer = viewList4.get(1).toString();
			String user = viewList4.get(2).toString();
			String domain = viewList4.get(3).toString();
			viewItr4 = viewList4.iterator();
			%>
              <tr style="background-color:<%=bgcolor4%>;">
			  <form id="form11" name="form1" method="post" action="updaterat">
                <%	
			while(viewItr4.hasNext())
			{
			
				%>
                <td height="39"><center>
                    <%=viewItr4.next()%>
                </center></td>
				
                <%
					
			}
			count4++;
			%>
			<td> <%
	
	if(!user.equals(user55))
	{
		%>
			  <label>
			  <select name="ratings" id="ratings">
			    <option value="1">High</option>
			    <option value="0">Low</option>
			    </select>
			  </label>
			  <%
	
	}
		%></td>
				<td><%
	
	if(!user.equals(user55))
	{
		%>
				  <label>
				  <select name="fun" id="fun">
				    <option value="1">Fun</option>
				    <option value="0">Not Fun</option>
			      </select>
				  </label>
				  <%
	
	}
		%>
			    <label>			    </label></td>
				<td><%
	
	if(!user.equals(user55))
	{
		%>
				  <label>
				  <select name="bookmark" id="bookmark">
				    <option value="bookmark">Bookmark</option>
				    <option value="notbookmark">Not bookmark</option>
			      </select>
				  </label>
				  <%
	
	}
		%>
			    <label>			    </label></td>
				<td><input name="user" type="text" id="user" style="visibility:hidden" value="<%=user%>" size="3" /><input name="answer" type="text" id="answer" style="visibility:hidden" value="<%=answer%>" size="3" />
				 <%
	
	if(!user.equals(user55))
	{
		%>
				  <input type="submit" name="Submit4" value="Update" />
				   <%
	
	}
		%>
				  
				  <label>
				  <input name="quesq" style="visibility:hidden" type="text" id="quesq" value="<%=quesq%>" size="3" />
				  </label>
<input name="dom" type="text" id="dom" style="visibility:hidden" value="<%=domain%>" size="3" /></td>
				
			</form>
              </tr>
              <%
		}
	}
	if(count4==0)
	{
		%>
              <tr>
                <td colspan="7" align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="7" align="center">No Record Avaliable</td>
              </tr>
              <%
	}
	%>
              <tr>
                <td colspan="7" align="center" height="2"></td>
              </tr>
            </table>
            <h2 class="style22">&nbsp;</h2>
          </div>
              
		<form id="form1" method="post" action="posting">
        <table width="384" height="186" border="0" bordercolor="#666666">
          <tbody>
            <tr>
              <td height="52" colspan="2" bgcolor="#626D1D"><div align="center"><span >Place to Post Questions</span></div></td>
            </tr>
            <tr>
              <td colspan="2" bgcolor="#89723A" class="style4"><div align="center" class="style10">
                  <label>
                  <textarea name="tweet" cols="50" rows="10" id="tweet"></textarea>
                  </label>
              </div></td>
            </tr>
            <tr>
              <td colspan="2" bgcolor="#89723A"><div align="center">
                  <label></label>
                  <p>
                    <input name="Submit" type="submit" onclick="CheckEvent();" value="Posting"/>
                  </p>
                <p>
                    <label>
                    <input name="username" type="text" id="username" value="<%=session.getAttribute("username")%>" style="visibility:hidden" />
                    </label>
                    <label> <a href="index.jsp">
                    <input name="city" type="text" id="city" value="<%=session.getAttribute("city")%>" style="visibility:hidden" />
                    </a></label>
                  </p>
                
              </div></td>
            </tr>
          </tbody>
        </table>
		</form>
                    
        <p align="center">&nbsp;</p>
        <form id="form2" name="form2" method="post" action="postans">
          <table width="384" height="186" border="0" bordercolor="#666666" >
            <tbody>
              <tr>
                <td height="52" colspan="2" bgcolor="#626D1D"><div align="center"><span class="style21 style19">&lt;&lt;Place to Post Answers &gt;&gt;</span></div></td>
              </tr>
              <tr>
                <td colspan="2" bgcolor="#89723A" class="style4"><h2 align="center" class="style21">Question</h2>
                  <p align="center">
                  <textarea name="ques" cols="50" rows="5" id="ques"></textarea>
                </p></td>
              </tr>
              <tr>
                <td colspan="2" bgcolor="#89723A" class="style4"><div align="center" class="style10">
                    <label>
                    <br />
                    <span class="style21">Answer</span><br />
                    <textarea name="ans" cols="50" rows="10" id="ans"></textarea>
                    </label>
                </div></td>
              </tr>
              <tr>
                <td colspan="2" bgcolor="#89723A"><div align="center">
                    <label></label>
                    <p>
                      <input name="Submit3" type="submit" onclick="CheckEvent();" value="Posting"/>
                    </p>
                    <p>
                      <input name="username3" type="text" id="username3" value="<%=session.getAttribute("username")%>" style="visibility:hidden" />
                    </p>
                    <p>
                      <label></label>
                  </p>
                  </div></td>
              </tr>
            </tbody>
          </table>
        </form>
        <p align="center" class="style6">&nbsp;</p>
      </div>
      
      
    </div>
  </div>
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
