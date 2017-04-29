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
ArrayList<ResidentsComplaints> rclist=(ArrayList<ResidentsComplaints>)request.getAttribute("USERLODGED");
ArrayList<Integer> statuslist=(ArrayList<Integer>)request.getAttribute("STATUS");
Station s=(Station)session.getAttribute("STATION");
%>
<ul class="mainmenu">
  <li><a href="pwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';"align="center">Details</a></li>

  <li><a class="active" href="userlodge"><img src="icons/peopleicon2.png" style="margin-right:5px;height:25px;"  align="center">User Lodge Complaint</a>
		
  </li>

  <li><a href="allcriminals"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';"  align="center">Criminals</a>
		
  </li>

  <li><a href="pcrimeinfo"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Crime Info</a></li>

  

</ul>
<!--User Logged-->
<center>
<div class="userlogged">
<table class="table">
  <tr>
      <th>User Id: </th><td><%=s.getSid() %></td>
  </tr>
  <tr>
      <th>Logged in Time: </th><td><%=s.getTime() %></td>
  </tr> 
  
</table>
</div>
</center>
<!--End User Logged-->
<!--Solved/Not Solved-->

<div class="residentform" >
<form action="updatestatus" method="post">
<input type="text" name="lcid" placeholder="Enter LCID" required/>
<input type="hidden" name="status" value="Solved" />
<input type="hidden" name="plocation" value="<%=s.getPlocation() %>" />
<center><div style="width:100px;">
<input type="submit" value="Solved!" />
</div></center>
</form>
</div>
<!--End Solved/Not Solved-->
<!--Number of Solved-->
<center><div class="solvedtablecontainer">
<table class="table">
  <tr>
      <th>Solved: </th><td><%=statuslist.get(0) %></td>
  </tr>
  <tr>
      <th>Unsolved: </th><td><%=statuslist.get(1) %></td>
  </tr> 
  
</table></center>
<!--End Number of Solved-->

<!--User Lodge Complaint-->
<center><div class="userlodgecomplainttablecontainer">
<table class="userlodgecomplainttable">
  <tr><th>LCID</th><th>RID</th><th>Resident<br/>Name</th><th>Crime Type</th><th>Date</th><th>Time</th><th>Landmark</th><th>Police Station</th><th>Victim's Name</th><th>Suspect's Name</th><th>Status</th></tr>
  <%
  	if(rclist!=null){
  		for(ResidentsComplaints rc:rclist){
  	
  %>
  <tr><td><%=rc.getLcid() %></td><td><%=rc.getRid() %></td><td><%=rc.getName() %></td><td><%=rc.getCtype() %></td><td><%=rc.getCdate() %></td><td><%=rc.getCtime() %></td><td><%=rc.getLandmark() %></td><td><%=rc.getPlocation() %></td><td><%=rc.getVictims() %></td><td><%=rc.getSuspects() %></td><td><%=rc.getStatus() %></td></tr>
 <%
  		}
  }
  else{
  %>
  <tr><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td></tr>
  <%
  }
  %>
</table></center>
<!--End User Lodge Complaint-->


<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>

</body>
</html>