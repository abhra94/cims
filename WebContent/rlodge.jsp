<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,org.cims.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Resident Lodge</title>	
	<link rel="stylesheet" type="text/css" href="r-style.css">
</head>
<body>
<center><div>
<img class="acc" style="margin-top: 2px;" src="images/ACC.png" />
</div></center>
<%
Residents r=(Residents)session.getAttribute("RESIDENTS");
%>
<!--MEnu -->
<ul class="mainmenu">
  <li><a href="rwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';"align="center">Details</a></li>

  <li><a class="active" href="#"><img src="icons/peopleicon2.png" style="margin-right:5px;height:25px;" align="center">Lodge Complaint</a>
		
  </li>

  <li><a href="complaintstatus"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';"  align="center">Complaint Status</a>
		
  </li>

  <li><a href="rcrimeinfo.jsp"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Crime Info</a></li>

 


</ul>
<!--MEnu -->
<!--User Logged-->
<center>
<div class="userlogged">
<table class="table">
  <tr>
      <th>User Id: </th><td><%=r.getRid() %></td>
  </tr>
  <tr>
      <th>Logged in Time: </th><td><%=r.getTime() %></td>
  </tr> 
  
</table>
</div>
</center>
<!--End User Logged-->
<%
String status=request.getParameter("status");
if(status.equals("done"))
{
%>

<!--Lodge Complaint Status-->
<div class="statuscontainer" >
<img class="statusimagesuccess" src="icons/status.png" style="margin-left:15px" align="center"/>
<div class="statustext" >
Complaint Lodged!
</div>
</div>
<!--Lodge Complaint Status End-->
<%
}
%>

<!--Lodge Complaint-->
<div class="residentform">
<form action="lodge" method="post">
<input type="text" name="rid" placeholder=YourID:#<%=r.getRid() %> disabled />
<input type="hidden" name="rid" value="<%=r.getRid() %>" />
<div class="formlabel">Type of Crime:</div>
<select class="selectoption" name="ctype" > 
  <option value="Robbery" selected>Robbery</option>
  <option value="Theft">Theft</option>
  <option value="Homicide" >Homicide</option> 
</select><div class="required">*</div>

<div style="padding-bottom:10px;"><div class="formlabel">Crime Date:</div>
<input type="date" name="cdate" required/><div class="required">*</div>
</div>

<div style="padding-bottom:10px;"><div class="formlabel">Crime Time:</div>
<input type="time" name="ctime" required/><div class="required">*</div>
</div>

<div class="formlabel">Police Station:</div>
<select class="selectoption" name="sloc" > 
  <option value="Baguiati" selected>Baguiati</option>
  <option value="Barasat">Barasat</option>
  <option value="Barrackpore" >Barrackpore</option> 
  <option value="Patuli">Patuli</option> 
</select><div class="required">*</div>

<input type="text" name="landmark" placeholder="Nearest Landmark/CLUB" maxlength="20" required/><div class="required">*</div>
<input type="text" name="victimname" placeholder="Victim's Name" required/><div class="required">*</div>
<input type="text" name="suspectname" placeholder="Suspect's Name (if any)" />
<input type="hidden" name="status" value="Unsolved" />
<input type="submit" value="Lodge Complaint!" />
</form>
<div class="required">* Required Field</div>
</div>

<!--End Lodge Complaint-->
<!--Footer -->
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
<!--End Footer -->

</body>
</html>