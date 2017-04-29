<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*,org.cims.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ACC::Resident Complaint</title>	
	<link rel="stylesheet" type="text/css" href="r-style.css">
</head>
<body>
<center><div>
<img class="acc" style="margin-top: 2px;" src="images/ACC.png" />
</div></center>
<%
ArrayList<Complaints> complist=(ArrayList<Complaints>)request.getAttribute("RESIDENTSCOMPLAINTS");
Residents r=(Residents)session.getAttribute("RESIDENTS");
%>
<ul class="mainmenu">
  <li><a href="rwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';"align="center">Details</a></li>

  <li><a href="rlodge.jsp?status="><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">Lodge Complaint</a>
		
  </li>

  <li><a class="active" href="#"><img src="icons/policeicon2.png" style="margin-right:5px;height:25px;" align="center">Complaint Status</a>
		
  </li>

  <li><a href="rcrimeinfo.jsp"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Crime Info</a></li>

  

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
<center><div class="complainttablecontainer">
<table class="complainttable">
  <tr><th>LCID</th><th>Crime Type</th><th>Date</th><th>Time</th><th>Police Station</th><th>Victim's Name</th><th>Status</th></tr>
  <%
  if(complist!=null){
  		for(Complaints c:complist)
  		{
  %>
  <tr><td><%=c.getLcid() %></td><td><%=c.getCtype() %></td><td><%=c.getCdate() %></td><td><%=c.getCtime() %></td><td><%=c.getPlocation() %></td><td><%=c.getVictims() %></td><td><%=c.getStatus() %></td></tr>
  <%
  		}
  }
  else{
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