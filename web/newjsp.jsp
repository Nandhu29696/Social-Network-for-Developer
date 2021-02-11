<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.util.regex.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Analyse Social Roles</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="stacks.css" >
  <link rel="stylesheet" type="text/css" href="primary.css" >
  <link rel="stylesheet" type="text/css" href="product.css" >
  <link rel="stylesheet" type="text/css" href="channels.css" >
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<link rel="stylesheet" type="text/css" href="util.css">
<link rel="stylesheet" type="text/css" href="main.css">
            
<style type="text/css">
<!--
.style4 {font-size: 18px}
.style5 {	color: #E1EAF1;
	font-size: 24px;
}
.style6 {font-size: 16px}
.style8 {font-size: 16px; font-weight: bold; }
.style10 {font-size: 18px; font-weight: bold; }
-->
</style>
<script type="text/javascript">
function check()
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
var numbers = /^[0-9]+$/;
var letters = /^[a-zA-Z]+$/;
var usecase = /^[0-9a-zA-Z]+$/;
//var x=document.forms["form1"]["username"].value;
//var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(document.getElementById("full name").value=="")
  {
  alert("Fullname Must Not be Empty");
  //document.form1.fullname.focus();
  return false;
  }
  else if(!document.getElementById("full name").value.match(usecase))
  {
  alert("Doesnot fill with special characters..");
  //document.form1.prof.focus();
  return false;
  }
  
else if(document.getElementById("username").value=="")
{
alert("Username must not be empty");
//document.form1.username.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if(!document.getElementById("username").value.match(usecase))
{
alert("Invalid User name");
//document.form1.username.focus();
return false;
}

else if(document.getElementById("password").value=="")
{
alert("Please enter Password...");
//document.form1.password.focus();
return false;
//document.getElementById('in').getAttributeNode('class').value="correct";
}

else if(document.getElementById("age").value=="")
{
alert("Enter the Age...");
//document.form1.mobile.focus();
return false;

}
else if(!document.getElementById("age").value.match(numbers))
{
alert("Mobile Must Be Numeric");
//document.form1.mobile.focus();
return false;
}

 
  else if(document.getElementById("prof").value=="" || !document.getElementById("prof").value.match(usecase))
  {
  alert("Prof Must Not be Empty");
  //document.form1.prof.focus();
  return false;
  }
  
    else if(!document.getElementById("prof").value.match(usecase))
  {
  alert("Doesnot fill with special characters..");
  //document.form1.prof.focus();
  return false;
  }
  
else if(document.getElementById("mobile").value=="")
{
alert("Enter Mobile number...");
//document.form1.mobile.focus();
return false;

}
else if(!document.getElementById("mobile").value.match(numbers) || document.getElementById("mobile").value.length < 10 || document.getElementById("mobile").value.length > 10)
{
alert("Mobile Must Be Numeric");
//document.form1.mobile.focus();
return false;
}

else if(document.getElementById("emailid").value=="")
{
alert("Enter an email address!");
//document.form1.emailid.focus();
return false;
}


else if(!document.getElementById("emailid").value.match(mailformat))
{
alert("You have entered an invalid email address!");
alert("Enter the valid login details");
return false;
}

else
{
    alert("Register successfully");
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
                            <a href="login.jsp" class="login-link s-btn s-btn__filled py8 js-gps-track" rel="nofollow"
                               data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log in</a>
                            <a href="register.jsp" class="login-link s-btn s-btn__primary py8" rel="nofollow" data-ga="[&quot;sign up&quot;,&quot;Sign Up Navigation&quot;,&quot;Header&quot;,null,null]">Sign up</a>
    
                </li>
      </header>
    <div class="limiter">
              <div class="container-login100" style="margin-top:80px;">
        <div class="wrap-login100" >
             <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
                          <span class="login100-form-title-1">
                              Sign Up
                          </span>
                      </div>
        <form id="form1" name="form1" method="post" action="registration">
            <div align="center" class="tablereg">
                  <table width="384" height="234" border="0" >
                    <tbody>
                       
                        <tr class="tr1">
                        <td height="43" class="auto-style1"><span class="style4">Full name </span></td>
                        <td><label>
                          <input name="fullname" type="text" id="fullname" />
                        </label></td> </tr>
                         <tr class="tr1">
                      <td height="43" class="auto-style3"><span class="style4">Username</span></td>
                        <td><label>
                        <input name="username" type="text" id="username" />
                        </label></td>
                      </tr>
                      <tr class="tr1">
                        <td height="42"><span class="style4">Password</span></td>
                        <td><label></label>
                          <label>
                          <input name="password" type="password" id="password" />
                        </label>                        </td>
                      </tr>
                      <tr>
                        <td height="42"><span class="style4">Age</span></td>
                        <td><label>
                          <input name="age" type="text" id="age" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="42"><span class="style4">Profession<br />
                        </span></td>
                        <td><label>
                          <input name="prof" type="text" id="prof" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="42"><span class="style4">Domain</span></td>
                        <td><input name="domain" type="text" id="domain" /></td>
                      </tr>
                      
                      <tr>
                        <td height="42"><span class="style4">Mobile</span></td>
                        <td><label>
                          <input name="mobile" type="text" id="mobile" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="42"><span class="style4">Email Id </span></td>
                        <td><label>
                          <input name="emailid" type="text" id="emailid" />
                        </label></td>
                      </tr>
                        <tr>
                        <td height="42"><span class="style4">Image</span></td>
                        <td><label>
                          <input type="file" name="fileToUpload" id="fileToUpload">
                        </label></td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <label>
                            <input type="submit" name="Submit2" value="Register me" onclick="return check();"/>
                            </label>
                            <p><span class="style8"><a href="login.jsp">Go to Login </a></span></p>
                        </div></td>
                      </tr>
                    </tbody>
            </table>
          </div>
        </form>
        <p align="center" class="style6">&nbsp;</p>
      </div>
       </div>
  </div>
 </div>

</body>
</html>
