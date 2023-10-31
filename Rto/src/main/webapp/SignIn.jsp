<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<style>
html,body{
    height:100%;
    box-sizing:border-box;
}
footer{
overflow:auto;
padding-bottom:100px;
position:relative;
height:100%;
margin-top: 500px;
clear:both;
box-sizing:inherit;
}
h4{
text-align: center;
color: red;
}
</style>
<body>
     	
     	<h3 style="text-align: center">login</h3>
     	
	<form class="form" action="signIn" method="get">

		<div class="container w-50 border border-dark border-5 mt-5">
		
     	    <h4>${message}</h4>
			<div class="mb-3">
				<label class="form-label">Email</label> <input type="email"
					class="form-control" placeholder="email" name="email"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">Password</label> <input type="PassWord"
					class="form-control" placeholder="password" name="passWord"
					required="required">
			</div>


			<br><input type="submit" value="signIn" class="btn btn-success">
                 <input type="submit" value="back" class="btn btn-success">
		</div>
	</form>
	
	</body>

    <div id="footer">
		<%@include file="footer.jsp"%>
	</div>
	
 
</html>