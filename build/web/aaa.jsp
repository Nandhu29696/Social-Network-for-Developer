<%@ page language="java" import="java.util.*,java.io.*,java.util.ArrayList,java.lang.*,java.sql.*;"%> 

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
      
      
      
      <div class="div6-1" style="background-color: #d7d9db">  
          <h2 align="center" style="padding-top:30px; font-size: 20px; color: blueviolet ">Welcome <span style="color: #2a4074; font-size: 35px;font-variant-caps: small-caps; "><%=session.getAttribute("username")%></span></h2>
          <div align="left">
            
               <form id="form1" method="post" action="posting" >
        <div id="question-form" style="padding-left:30px; " >
                 
            <table class="bg-white bar-sm bs-md p16 ba bc-black-3" width="550" height="206">
          <tbody class="grid fl1 fd-column js-stacks-validation" style="padding-left:30px; padding-bottom: 30px; padding-top: 30px;">
            
              <tr class="grid fl1 fd-column js-stacks-validation"><td > <label class="d-block s-label mb4" for="title">
                                Domain
                                <p class="s-description mt2">Be specific and imagine you?re asking a question to another person</p>
                            </label></td>
                  </tr>
              <tr>
                  <td>
                      <input cols="160" rows="5"  value="<%=session.getAttribute("city")%>"  name="title" type="text" data-min-length="15" data-max-length="150" style="border-radius:13px;">
                  </td>
              </tr>
              
              <tr style="padding-top:10px;">
                  
                  <td class="style4"><div align="left" class="style10">
                  <label class="s-label mb4 d-block" for="wmd-input">
                Body
        <p class="s-description mt2">Include all the information someone would need to answer your question</p>
            </label>
                      <label>
                  <textarea name="tweet" cols="190" rows="20" id="tweet"  style="border-radius:13px;" data-max-length="150" ></textarea>
                  </label>
              </div></td>
            </tr>
            <tr>
              <td colspan="2" ><div align="left">
                  <label></label>
                  
                  <p  style="padding-left: 10px;"><a href="userpage.jsp">
                      <input name="Submit" type="submit" onclick="CheckEvent();" value="Review your post"/></a>
                  </p>
                <p>
                    <label>
                    <input name="username" type="text" id="username" value="<%=session.getAttribute("username")%>" style="visibility:hidden"  />
                    </label> 
                    <!--
                    <label> 
                    <input name="city" type="text" id="city" value="<%=session.getAttribute("city")%>" style="visibility:hidden" />
                    </label>-->
                  </p>
                
              </div></td>
            </tr>
          </tbody>
        </table>
              </div>
                    </form>
              
            </div>
		
        
      </div>
      </div>
  </div>
  
  
</div>
</body>
</html>
