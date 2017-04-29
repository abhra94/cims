<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,org.cims.*" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Resident Register</title>	
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<!--Begining of Menu -->
<ul class="mainmenu">
  <li><a href="home.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';" align="center">Home</a></li>

  <li><a class="active" href="residentlogin.jsp"><img src="icons/peopleicon2.png" style="margin-right:5px;height:25px;" align="center">Residents</a>
		<ul class="submainmenu">
			<li><a href="residentlogin.jsp"><img src="icons/loginicon.png" style="margin-right:5px;height:25px;" align="center">Login!</a></li>
			<li><a href="#"><img src="icons/registericon.png" style="margin-right:5px;height:25px;" align="center">Register!</a></li>
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

<!--Form -->
<div class="logform" >
<form action="rregister" method="post">
<!-- NAME-->
<input type="text" name="rname" placeholder="Full Name" required/><div class="required">*</div>
<!-- Email-->
<input type="text" name="remail" placeholder="Email" required/><div class="required">*</div>
<!-- Pass-->
<input type="password" name="rpass" placeholder="Password" required/><div class="required">*</div>
<!-- Gender-->
<div style="padding-bottom:10px;"><div class="formlabel">Gender:<div class="required">*</div> </div><div style="padding-left: 50px; display: inline;"><input type="radio" name="rgender" value="male" checked/><div class="valuelabel">Male</div></div><div style="padding-left: 20px; display: inline;"><input type="radio" name="rgender" value="female" /><div class="valuelabel">Female</div></div></div>
<!-- Age-->
<div class="formlabel">Age:<div class="required">*</div></div>
<select class="selectoption" name="rage" > 
  <option value="18">18</option>
  <option value="19">19</option>
  <option value="20" >20</option>
  <option value="21">21</option>
  <option value="22" selected="selected">22</option>
  <option value="23">23</option>
  <option value="24">24</option>
  <option value="25">25</option>
  <option value="26">26</option>
  <option value="27">27</option>
  <option value="28">28</option>
  <option value="29">29</option>
  <option value="30">30</option>
</select>
<!--Address-->
<input type="text" name="raddress" placeholder="Permanent Address" maxlength="70" required/><div class="required">*</div>
<!--Identity-Proof -->
<div style="padding-bottom:10px;"><div class="formlabel">Identity-Proof:<div class="required">*</div> </div>
<div style="padding-left: 10px; display: inline;"><input type="radio" name="ridentityproof" value="Pan Card" /><div class="valuelabel">Pan Card</div></div>
<div style="padding-left: 10px; display: inline;"><input type="radio" name="ridentityproof" value="Voter Card" checked /><div class="valuelabel">Voter Card</div></div>
<div style="padding-left: 10px; display: inline;"><input type="radio" name="ridentityproof" value="Adhaar Card" /><div class="valuelabel">Adhaar Card</div></div>
</div>

<!--Identity-Proof ID-->
<input type="text" name="ridno" placeholder="Voter Card/Pan Card/Adhaar Card Id number" required/><div class="required">*</div>
<!-- SUBMIT -->
<input type="submit" value="REGISTER!" />

</form>
<div class="required">* Required Field</div>
</div>
<center><a class="linkbutn" href="residentlogin.jsp" target="_self">Login!</a></center>
<!--Form -->

<%
	String statusmsg=request.getParameter("status");
	if(statusmsg.equals("success"))
	{

%>

<!--Lodge Complaint Status -->
<div class="statuscontainer" >
<img class="statusimagesuccess" src="icons/status.png" style="margin-left:15px" align="center"/>
<div class="statustext" >
Registration Done!
</div>
</div>
<!--Lodge Complaint Status End-->

<%
	}
%>




<!--Footer -->
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
<!--End Footer -->
</body>
</html>