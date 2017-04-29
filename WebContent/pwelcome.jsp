<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,org.cims.*" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Welcome Resident</title>	
	<link rel="stylesheet" type="text/css" href="r-style.css">
</head>
<body>
<center><div>
<img class="acc" style="margin-top: 2px;" src="images/ACC.png" />
</div></center>
<%
Station s=(Station)session.getAttribute("STATION");
%>
<ul class="mainmenu">
  <li><a class="active" href="#"><img src="icons/homeicon2.png" style="margin-right:5px;height:25px;" align="center">Details</a></li>

  <li><a href="userlodge"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">User Lodge Complaint</a>
		
  </li>

  <li><a href="allcriminals"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';"  align="center">Criminals</a>
		
  </li>

  <li><a href="pcrimeinfo"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Crime Info</a></li>

  

</ul>
<center><div class="tablecontainer">
<table class="table">
  <tr>
  		<th>Member Since: </th><td><%=s.getJoin() %></td>
  </tr>
  <tr>
  		<th>SID: </th><td>#<%=s.getSid() %></td>
  </tr>
  <tr>
  		<th>Name: </th><td><%=s.getName() %></td>
  </tr>
  <tr>
  		<th>Gender: </th><td><%=s.getGender() %></td>  		
  </tr>
  <tr>
  		<th>Age: </th><td><%=s.getAge() %> yrs</td>
  </tr>
  <tr>
  		<th>Email: </th><td><%=s.getEmail() %></td>
  </tr>
  <tr>
  		<th>Police Station: </th><td><%=s.getPlocation() %></td>
  </tr>  
   <tr>
  		<th>Logged in Time: </th><td><%=s.getTime() %></td>
  </tr>
</table></center>
<center><a class="linkbutn" href="logout.jsp?status=logout" target="_self">LOGOUT!</a></center>
<!--Footer -->
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
<!--End Footer -->

</body>
</html>