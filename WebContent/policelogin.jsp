<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Police Login</title>	
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!--Begining of Menu -->
<ul class="mainmenu">
  <li><a href="home.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';" align="center">Home</a></li>

  <li><a href="residentlogin.jsp"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">Residents</a>
		<ul class="submainmenu">
			<li><a href="residentlogin.jsp"><img src="icons/loginicon.png" style="margin-right:5px;height:25px;" align="center">Login!</a></li>
			<li><a href="residentregister.jsp?status="><img src="icons/registericon.png" style="margin-right:5px;height:25px;" align="center">Register!</a></li>
  		</ul>
  </li>

  <li><a class="active" href="#"><img src="icons/policeicon2.png" style="margin-right:5px;height:25px;" align="center">Police</a>
		<ul class="submainmenu">
			<li><a href="#"><img src="icons/loginicon.png" style="margin-right:1px;height:25px;" align="center">Login!</a></li>
			
  		</ul>
  </li>

  <li><a href="contact.jsp"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Contact</a></li>

  <li><a href="about.jsp"><img src="icons/aboutusicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/aboutusicon2.png';" onmouseout="this.src='icons/aboutusicon.png';" align="center">About Us</a></li>

</ul>
<!--End of Menu -->
<!--Form -->
<div class="logform" >
<form action="plogin" method="post">
<input type="text" name="pemail" placeholder="Email" required/><div class="required">*</div>
<input type="password" name="ppass" placeholder="Password" required/><div class="required">*</div>
<input type="submit" value="LOGIN!" />
</form>
<div class="required">* Required Field</div>
</div>
<!--Form -->
<!--Footer -->
<div class="footer">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div>
<!--End Footer -->
</body>
</html>