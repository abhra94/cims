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
ArrayList<Crime> crimelist=(ArrayList<Crime>)request.getAttribute("CRIMELIST");
Station s=(Station)session.getAttribute("STATION");
%>
<ul class="mainmenu">
  <li><a href="pwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';" align="center">Details</a></li>

  <li><a href="userlodge"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">User Lodge Complaint</a>
    
  </li>

  <li><a href="allcriminals"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/policeicon2.png';" onmouseout="this.src='icons/policeicon.png';" align="center">Criminals</a>
    
  </li>

  <li><a class="active" href="#"><img src="icons/phoneicon2.png" style="margin-right:5px;height:25px;" align="center">Crime Info</a></li>

  

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
<center><a style="margin-top: 30px;"class="linkbutn" href="passign.jsp" target="_self">Assign Criminal</a></center>
<!--Criminals List-->
<center><div class="complainttablecontainer">
<table class="complainttable">
  <tr><th>SID</th><th>CID</th><th>Area</th><th>Crime Type</th><th>Crime Date</th><th>Crime Time</th></tr>
  <%
  if(crimelist!=null){
  		for(Crime c:crimelist){
  %>   
  <tr><td><%=c.getSid() %></td><td><%=c.getCid() %></td><td><%=c.getCarea() %></td><td><%=c.getCtype() %></td><td><%=c.getCdate() %></td><td><%=c.getCtime() %></td></tr>
  <%
  		}
  }
  else{
  %>
  <tr><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td></tr>
  <%
  }
  %>
</table></center>
<!--End Criminals List-->

</body>
</html>