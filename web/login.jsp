<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
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
else if(document.getElementById("password").value=="")
{alert("password must not be empty");}
else
{
return true;
}
}
</script>
</head>
<body>
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
        
    <div class="limiter" >
              <div class="container-login100"style="background-color: #cae8d4;" >
                  <div class="wrap-login100" >
                      <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
                          <span class="login100-form-title-1">
                              Sign In
                          </span>
                      </div>
      
                      <form id="form1" name="form1" method="post" action="login">
                        <div align="center">
                                <table width="384" height="289" border="0">
                                  <tbody>
                                    <tr>
                                      
                                    </tr>
                                    <tr>
                                      <td height="70"><h3 class="style4">User name </h3></td>
                                      <td><label>
                                      <input name="username" type="text" id="username" required />
                                      </label></td>
                                    </tr>
                                    <tr>
                                      <td height="70"><h3 class="style4">Password</h3></td>
                                      <td><label></label>
                                        <label>
                                        <input name="password" type="password" id="password" required/>
                                      </label>                        </td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><div align="center">
                                          <label>
                                          <input type="submit" name="Submit2" value="Sign in" onclick="return check();"/>
                                          </label>
                                          <p><span class="style8"><a href="register.jsp">New Registration</a></span></p>
                                      </div></td>
                                    </tr>
                                  </tbody>
                                </table>
                        </div>
                      </form>
                  </div>
              </div>
          </div>
         
</body>
</html>
