<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.dto.Bus"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<style>
.fa {
  font-size: 25px;
  cursor: pointer;
  user-select: none;
}
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
  width: 100%;
  opacity: 0.8;
}
.container {
  position: absolute;
  right:35%;
  margin: 100px;
  max-width:900px;
  padding: 155px;
  background-color:transparent;
}

.container2 {
  position: absolute;
  right: 0;
 
  max-width: 300px;
  padding: 5px;
  background-color:transparent;
}
</style>
<body>
<div class="bg-img">

	<!-- 
	<table border=2 align=center>
		<tr>
			<th>ID</th>
			<th>TYPE</th>
			<th>ARRIVAL</th>
			<th>DEPARTURE</th>
			<th>TOTALSEATS</th>
			<th>PRICE</th>
			
		</tr>
		
		
		<% 
		ArrayList<Bus> arrayList= (ArrayList<Bus>)request.getAttribute("busesData");
		for(Bus bus : arrayList) { %>		 
		<tr>			
			<td><%=bus.getBusId()%></td>
			<td><%=bus.getBusType()%></td>
			<td><%=bus.getDepart()%></td>
			<td><%=bus.getArrival()%></td>
			<td><%=bus.getSeats()%></td>
			<td><%=bus.getPrice()%></td>
			
			<% } %>
			</table>
			 -->
<jsp:include page="SelectSeat.jsp" />
	<table  class="table table-striped table-condensed table-bordered , container" border=2 align=center  style="width:80%">
		<!-- <tr>
			<th>ID</th>
			<th>TYPE</th>
			<th>DEPART</th>
			<th>ARRIVAL</th>
			<th>TOTALSEATS</th>
			<th>PRICE</th>
			
		</tr>-->
		<c:forEach var="bus" items="${busesData}">
			<tr style="background-color: transparent;text">
				<!-- <td>${bus.busId}</td>-->
				<td><h2><b>${bus.busType}</b></h2></td>
				<td><h4><b>${bus.arrival}</b></h4></td>
				<td><h4><b>${bus.depart}</b></h4></td>
				<td><h4><b>${bus.seats}</b></h4></td>
				<td><h3><b>${bus.price}</b></h3></td>
				<td><a href='Seats.jsp?busId=${bus.busId}' type="submit" class="btn">VIEW SEATS</a></td>
			  <!-- <form action='Seats.jsp' class="container2" method="post">
    <input type="submit" class="btn" value="VIEW SEATS" /></form></td>-->
   </tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>





