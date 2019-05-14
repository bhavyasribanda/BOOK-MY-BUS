<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.dto.Bus"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.bg-img {
  /* The image used */
  background-image: url("https://images.pexels.com/photos/56832/road-asphalt-space-sky-56832.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  
  margin-top:25px;
  margin-left:-10px;
  margin-right:10px;
  height:100%;
  min-height:480px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.btn {
  background-color: red;
  color: white;
  padding: 10px 12px;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.8;
}

.container2 {
  position: absolute;
  right: 0;
 
  max-width: 300px;
  padding: 5px;
  background-color:transparent;
}
.container {
  position: absolute;
  right:30%;
  margin: 100px;
  max-width: 500px;
  padding: 5px;
  background-color:transparent;
}

</style>
<body>
<div class="bg-img">

<!-- 
	<jsp:useBean id="customerData" class="com.dto.Customer"
		scope="request" />
	<table border=2 align=center>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>EMAILID</th>
			<th>MOBILENUMBER</th>
			</tr>
		<tr>
			<td><%=customerData.getCustId()%></td>
			<td><%=customerData.getCustName()%></td>
			<td><%=customerData.getEmail()%></td>
			<td><%=customerData.getMobileNo()%></td>
			</tr>
	</table>
 -->
  <div class="container">
			<h2>NAME&nbsp;:&nbsp;&nbsp;${customerData.custName}</h2><br/>
			<h2>EMAILID&nbsp;:&nbsp;&nbsp;${customerData.email}</h2><br/>
			<h2>MOBILENUMBER&nbsp;:&nbsp;&nbsp;${customerData.mobileNo}</h2><br/>
			
	<br/>
      <form action="SetBook" align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn">Proceed</button>&nbsp;</form>
    <br/>
    </div>
 
	</div>
</body>
</html>





