<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,org.cims.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Crime Info</title>	
	<link rel="stylesheet" type="text/css" href="r-style.css">
</head>
<body>
<center><div>
<img class="acc" style="margin-top: 2px;" src="images/ACC.png" />
</div></center>
<%
Residents r=(Residents)session.getAttribute("RESIDENTS");
ArrayList<ResidentCrimeInfo> rcrimeinfo=(ArrayList<ResidentCrimeInfo>)request.getAttribute("RESIDENTGETCRIMEINFO");
%>
<ul class="mainmenu">
  <li><a href="rwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';"align="center">Details</a></li>

  <li><a href="rlodge.jsp?status="><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">Lodge Complaint</a>
		
  </li>

  <li><a href="complaintstatus"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';" align="center">Complaint Status</a>
		
  </li>

  <li><a class="active" href="#"><img src="icons/phoneicon2.png" style="margin-right:5px;height:25px;" align="center">Crime Info</a></li>

 

</ul>
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
<!--Search -->

<div class="residentform">
<form action="rcrimeinfo" method="post">
<div class="formlabel">Police Station:</div>
<select class="selectoption" name="sid" > 
  <option value="s02" selected>Baguiati</option>
  <option value="s03">Barasat</option>
  <option value="s04" >Barrackpore</option> 
  <option value="s01" >Patuli</option> 
</select><div class="required">*</div>
<center><div style="width:100px;">
<input type="submit" value="Search" />
</div></center>
</form>
</div>
<!--End Search -->
<center><div class="complainttablecontainer">
<table class="complainttable">
  <tr><th>SID</th><th>Police Station</th><th>Criminal Name</th><th>Age</th><th>Gender</th><th>Type of Crime</th><th>Area of Crime</th></tr>
  <%
  if(rcrimeinfo!=null){
	  for(ResidentCrimeInfo rci:rcrimeinfo){
  %>
  <tr><td><%=rci.getSid() %></td><td><%=rci.getSloc() %></td><td><%=rci.getCname() %></td><td><%=rci.getCage() %> Yrs</td><td><%=rci.getCgender() %></td><td><%=rci.getCtype() %></td><td><%=rci.getCarea() %></td></tr>
  <%
	  }
  }else{
  %>
   <tr><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td></tr>
   <%
  }
   %>
</table></center>
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
</body>
</html>