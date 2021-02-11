<%@ page language="java" import="java.util.*,java.io.*,java.sql.*;"%> 
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
.style6 {font-size: 16px}
.style18 {font-size: x-large;
	color: #990000;
}
.style19 {color: #FFFFFF}
-->
</style>
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
                        <a href="login.jsp" class="login-link s-btn s-btn__filled py8 js-gps-track" rel="nofollow"
                           data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log in</a>
                        <a href="register.jsp" class="login-link s-btn s-btn__primary py8" rel="nofollow" data-ga="[&quot;sign up&quot;,&quot;Sign Up Navigation&quot;,&quot;Header&quot;,null,null]">Sign up</a>

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
        <a id="nav-questions"
            href="#"
            class="pl8 js-gps-track nav-links--link -link__with-icon"
            
            data-gps-track="top_nav.click({is_current:false, location:1, destination:1})">
<svg aria-hidden="true" class="svg-icon iconGlobe" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1a8 8 0 1 0 0 16A8 8 0 0 0 9 1zM8 15.32a6.4 6.4 0 0 1-5.23-7.75L7 11.68v.8c0 .88.12 1.32 1 1.32v1.52zm5.72-2c-.2-.66-1-1.32-1.72-1.32h-1v-2c0-.44-.56-1-1-1H6V7h1c.44 0 1-.56 1-1V5h2c.88 0 1.4-.72 1.4-1.6v-.33a6.4 6.4 0 0 1 2.32 10.24v.01z"/></svg>                <span class="-link--channel-name">Stack Overflow</span>
        </a>
    </li>

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
  <div style="background-color: #d7d9db">
      
      
      
      <div class="div6-1" >  
        <h2 align="center"><a href="index.html">Analysis Social Roles</a></h2>
        <form id="form1" name="form1" method="post" action="">
          <div align="center">
            <table width="100%"  align="center" style="border:1px solid #000000;">
              <tr>
                <td colspan="9" align="center" height="10"></td>
              </tr>
              <tr bgcolor="#626D1D">
                <td colspan="9" align="center" class="style18 style1 style19">List of questions &amp; Answers </td>
              </tr>
              <tr>
                <td colspan="9" align="center" height="10"></td>
              </tr>
              <tr align="center" valign="middle" bgcolor="#89723A" style="font-weight:bold;">
                <td width="242"><span class="style19">Questionaire</span> </td>
                <td width="242"><span class="style19">Question</span></td>
                <td width="341"><span class="style19">Answer</span></td>
                <td width="341"><span class="style19">Answerer name </span></td>
              </tr>
       
            
            
              
           
              
              <tr>
                <td colspan="9" align="center">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="9" align="center">No Record Avaliable</td>
              </tr>
            
              <tr>
                <td colspan="9" align="center" height="2"></td>
              </tr>
            </table>
          </div>
        </form>
        <p align="center" class="style6">&nbsp;</p>
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
