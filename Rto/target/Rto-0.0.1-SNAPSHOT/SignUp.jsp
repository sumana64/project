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
h6 {
	font-size: 10px;
	text-align: center;
	color: red;
}

.required::after {
	content: "*";
	color: red;
	font-size: xp;
}
</style>
<body>
	<h4 style="text-align: center">SignUp Page</h4>
	<form class="form" action="signUp" method="post">

		<div class="container w-50 border border-dark border-5 mt-5">


			<div class="mb-3">
				<label class="form-label">FirstName</label> <input type="text"
					class="form-control" placeholder="FirstName" name="firstName"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">LastName</label> <input type="text"
					class="form-control" placeholder="lastName" name="lastName"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">DOB</label> <input type="date"
					class="form-control" placeholder="dob" name="dob"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">PhoneNo</label> <input type="tel"
					class="form-control" placeholder="PhoneNo" name="phoneNo"
					required="required">
			</div>
			<h6>${error}</h6>
			<div class="mb-3">
				<label class="form-label">Email</label> <input type="email"
					class="form-control" placeholder="Email" name="email"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">State</label> <input type="text"
					class="form-control" placeholder="State" name="state"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">District</label> <input type="text"
					class="form-control" placeholder="district" name="district"
					required="required"/>
			</div>


			<div class="mb-3">
				<label class="form-label">PassWord</label> <input type="PassWord"
					class="form-control" placeholder="PassWord" name="passWord"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">ConfirmPassWord</label> <input
					type="PassWord" class="form-control" placeholder="PassWord"
					name="ConfirmPassWord" required="required">
			</div>

			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckDefault" required="required" > <label class="form-check-label"
					for="flexCheckDefault">Confirm registration </label>
			</div>


			<br> <input type="reset" class="btn btn-success"> <input
				type="submit" class="btn btn-success">

		</div>
	</form>

	<c:forEach items="${voilation}" var="voilation">
		<h1>${voilation}</h1>
	</c:forEach>

	<div>
		<%@include file="footer.jsp"%>
	</div>


</body>
</html>