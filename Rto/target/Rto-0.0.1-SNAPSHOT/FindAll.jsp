<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>findAll</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<form action="findAll" method="get">
	
		<div style = "text-align": center;">
		<table class= "table">	
		<tbody>
				<tr>
					<th scope="col">firstName</th>
					<th scope="col">lastName</th>
					<th scope="col">dob</th>
					<th scope="col">phoneNo</th>
					<th scope="col">email</th>
					<th scope="col">state</th>
					<th scope="col">district</th>
					<th scope="col">passWord</th>
					<th scope="col">confirmPassWord</th>
				</tr>
			<tr>
			<c:forEach items="${dto1}" var="dto">
				<td>${dto.firstName}</td>
				<td>${dto.lastName}</td>
				<td>${dto.dob}</td>
				<td>${dto.phoneNo}</td>
				<td>${dto.email}</td>
				<td>${dto.state}</td>
				<td>${dto.district}</td>
				<td>${dto.passWord}</td>
				<td>${dto.confirmPassWord}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
         </div>
         <div class = "text-center">
          <input type="submit">
         </div> 
         
         </form>
         

</body>
</html>