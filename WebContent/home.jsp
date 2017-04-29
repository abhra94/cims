<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Home</title>	
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!--Begining of Menu -->

<ul class="mainmenu">
  <li><a class="active" href="#"><img src="icons/homeicon2.png" style="margin-right:5px;height:25px;" align="center">Home</a></li>

  <li><a href="residentlogin.jsp"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">Residents</a>
		<ul class="submainmenu">
			<li><a href="residentlogin.jsp"><img src="icons/loginicon.png" style="margin-right:5px;height:25px;" align="center">Login!</a></li>
			<li><a href="residentregister.jsp?status="><img src="icons/registericon.png" style="margin-right:5px;height:25px;" align="center">Register!</a></li>
  		</ul>
  </li>

  <li><a href="policelogin.jsp"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';"  align="center">Police</a>
		<ul class="submainmenu">
			<li><a href="policelogin.jsp"><img src="icons/loginicon.png" style="margin-right:5px;height:25px;" align="center">Login!</a></li>			
  		</ul>
  </li>

  <li><a href="contact.jsp"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Contact</a></li>

  <li><a href="about.jsp"><img src="icons/aboutusicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/aboutusicon2.png';" onmouseout="this.src='icons/aboutusicon.png';" align="center">About Us</a></li>

</ul>

<!--End of Menu -->


<!--Beginning of Marquee Breaking News -->
<marquee class="bnews" onmouseover="this.stop();" onmouseout="this.start();">Breaking News:
<div id="bnewsbody">
Soumyabrata Biswas Got arrested near Mumbai Highway
</div>
</marquee>
<!--End of Marquee Breaking News -->
<center><div>
<img style="margin-top: 15px;" src="images/logo.png" width="300px" height="300px"/>
</div></center>
<center><div>
<img style="margin-top: 2px;" src="images/ACC.png" />
</div></center>

<!--Footer -->
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
<!--End Footer -->
</body>
</html>