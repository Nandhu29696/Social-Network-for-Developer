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
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Analyse Social Roles<br />
        </a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu">
        <ul>
          <li><a href="index.jsp" class="active"><span>Home</span></a></li>
          <li><a href="#"><span>Services</span></a></li>
          <li><a href="#"><span>About Us</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="search"></div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/img_main.jpg" alt="" width="970" height="338" /> </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 align="center"><a href="index.html">Analyse Social Roles</a></h2>
        <form id="form1" name="form1" method="post" action="login"> <!--adminlogin -->
          <div align="center">
                  <table width="384" height="289" border="0">
                    <tbody>
                      <tr>
                        <td height="52" colspan="2" bgcolor="#666666"><div align="center"><span class="style5">Admin Login  </span></div></td>
                      </tr>
                      <tr>
                        <td height="70"><h3 class="style4">User name </h3></td>
                        <td><label>
                        <input name="username" type="text" id="username" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="70"><h3 class="style4">Password</h3></td>
                        <td><label></label>
                          <label>
                          <input name="password" type="password" id="password" />
                        </label>                        </td>
                      </tr>
                      <tr>
                        <td colspan="2"><div align="center">
                            <label>
                            <input type="submit" name="Submit2" value="Sign in" onclick="return check();"/>
                            </label>
                            <p><span class="style8"><a href="login.jsp">User Login </a></span></p>
                        </div></td>
                      </tr>
                    </tbody>
                  </table>
          </div>
        </form>
        <p align="center" class="style6">&nbsp;</p>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li></li>
        </ul>
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize">
      <div class="blok">
        <h2 align="center"><a href="patientlogin.jsp"></a> </h2>
      </div>
      <div class="blok">
        <h2 align="center"><a href="doctorlogin.jsp"></a> </h2>
      </div>
      <div class="blok">
        <h2>&nbsp;</h2>
        <p><br />
        </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="index.html">Analyse Social Roles</a><a href="#"></a>.</p>
      <p class="rf">&nbsp;</p>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>
