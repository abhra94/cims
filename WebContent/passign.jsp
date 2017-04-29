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
  <li><a href="pwelcome.jsp"><img src="icons/homeicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/homeicon2.png';" onmouseout="this.src='icons/homeicon.png';" align="center">Details</a></li>

  <li><a href="userlodge"><img src="icons/peopleicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/peopleicon2.png';" onmouseout="this.src='icons/peopleicon.png';" align="center">User Lodge Complaint</a>
    
  </li>

  <li><a href="allcriminals"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" align="center">Criminals</a>
		
  </li>

  <li><a href="pcrimeinfo.jsp"><img src="icons/phoneicon.png" style="margin-right:5px;height:25px;" onmouseover="this.src='icons/phoneicon2.png';" onmouseout="this.src='icons/phoneicon.png';" align="center">Crime Info</a></li>

  

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
<!--Lodge Complaint-->
<div class="residentform">
<form action="passign" method="post">
<input type="text" placeholder="<%=s.getSid() %>" disabled/>
<input type="hidden" name="sid" value="<%=s.getSid() %>"/>
<input type="text" name="cid" placeholder="Criminal ID(CID)" required/><div class="required">*</div>
<input type="text" name="carea" placeholder="Crime Area" required/><div class="required">*</div>

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



<input type="submit" value="Assign!" />
</form>
<div class="required">* Required Field</div>
</div>

<!--End Lodge Complaint-->
<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>
</body>
</html>