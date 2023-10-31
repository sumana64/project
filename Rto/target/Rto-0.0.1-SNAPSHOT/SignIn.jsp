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
<body>
     	<h4 style="text-align: center">login</h4>
     	<h2>${message}</h2>
	<form class="form" action="signIn" method="get">

		<div class="container w-50 border border-dark border-5 mt-5">


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
	
	 <footer>
   
    <div>
		<%@include file="footer.jsp"%>
	</div>
   </footer>
	

</body>
  
</html>