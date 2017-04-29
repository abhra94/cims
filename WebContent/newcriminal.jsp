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

  <li><a href="pcriminals.jsp"><img src="icons/policeicon.png" style="margin-right:5px;height:25px;" align="center">Criminals</a>
		
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
<!--new criminal-->
<div class="residentform">
<form action="criminalregister" method="post">
<input type="text" name="cname" placeholder="Criminal Name" required/><div class="required">*</div>

<div class="formlabel">Age:</div>
<select class="selectoption" name="cage" > 
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
</select><div class="required">*</div>

<div style="padding-bottom:10px;"><div class="formlabel">Gender:<div class="required">*</div> </div><div style="padding-left: 15px; display: inline;"><input type="radio" name="cgender" value="male" checked/><div class="valuelabel">Male</div></div><div style="padding-left: 20px; display: inline;"><input type="radio" name="cgender" value="female" /><div class="valuelabel">Female</div></div></div>

<input type="text" name="caddress" placeholder="Criminal's Address" maxlength="70" required/><div class="required">*</div>

<input type="text" name="cfacemark" placeholder="Face Mark" required/><div class="required">*</div>


<input type="submit" value="Enter!" />
</form>
<div class="required">* Required Field</div>
</div>

<!--End new criminal-->

<center><div class="footer1" style="color: #ffffb3; margin: 40px;">
Copyright &copy; 2016 
<div style="color:#ffffff;display: inline;">Anti Crime Cell</div>
<!--Author: Abhra Majumdar,Globsyn JEE Project -->
</div></center>

</body>
</html>