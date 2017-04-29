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
ArrayList<Criminals> crilist=(ArrayList<Criminals>)request.getAttribute("CRILIST");
Station s=(Station)session.getAttribute("STATION");
%>
<ul class="mainmenu">
  <li><a href="pwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';" align="center">Details</a></li>

  <li><a href="userlodge"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">User Lodge Complaint</a>
    
  </li>

  <li><a class="active" href="allcriminals"><img src="icons/policeicon2.png" style="margin-right:5px;height:25px;" align="center">Criminals</a>
		
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
<center><a style="margin-top: 30px;"class="linkbutn" href="newcriminal.jsp" target="_self">New Criminal</a></center>
<!--Criminals List-->
<center><div class="complainttablecontainer">
<table class="complainttable">
  <tr><th>CID</th><th>Name</th><th>Age</th><th>Gender</th><th>Address</th><th>Face Mark</th></tr>
  <%
  	if(crilist!=null){
  		for(Criminals cri:crilist){
  			
   %>
  <tr><td><%=cri.getCid() %></td><td><%=cri.getName() %></td><td><%=cri.getAge() %></td><td><%=cri.getGender() %></td><td><%=cri.getAddress() %></td><td><%=cri.getFacemark() %></td></tr>
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



<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
</body>
</html>