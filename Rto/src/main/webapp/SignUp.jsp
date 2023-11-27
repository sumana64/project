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
<script type="text/javascript">
 function handleName(){
	   
	    console.log("Name function is running")
	    const button = document.getElementById('button')
	    const fname = document.getElementById('firstName').value
	    console.log(fname)
	    console.log(fname.length)
	    
	    if(fname.length>3 && fname.length<=30){
	    	
	    	document.getElementById("err").innerHTML="<span style='color:green'>Name is valid</span>"
	    	button.removeAttribute("disabled")
	   
	    }else{
	    	
	    	button.setAttribute("disabled","")
	    	document.getElementById("err").innerHTML="<span style='color:red'>Name is Invalid</span>"
	
	    }
	  
	  
  }

 function handleName1(){
	   
	    console.log("Name function is running")
	    const button = document.getElementById('button')
	    const lname= document.getElementById('lastName').value
	    console.log(lname)
	    console.log(lname.length)
	    if(lname.length>3 && lname.length<=30){
	    	
	    	document.getElementById("err1").innerHTML="<span style='color:yellow'>Name is valid</span>"
	    	button.removeAttribute("disabled")
	   
	    }else{
	    	
	    	document.getElementById("err1").innerHTML="<span style='color:purple'>Name is Invalid</span>"
            button.setAttribute("disabled","")
	    	
	    }
	  
	  
}
 
   function validatePassWord(){
	   
	   var passWord = document.getElementById('passWord');
	   var confirmPassWord = document.getElementById('confirmPassWord')
	   var passWordValue = passWord.value;
	   var confirmPassWordValue = confirmPassWord.value;
	   console.log(passWord);
	   if(passWordValue!=null && passWordValue!="" && passWordValue.length>=8){
		  if(passWordValue==confirmPassWordValue){
			  console.log(' both password are same');
			  document.getElementById('passWordCompare').innerHTML = '';
		  } else{
			  
			  console.log(' both password are not same');
			  document.getElementById('passWordCompare').innerHTML = 'Password and confirmpassword must be same';
		  }
		  console.log('valid password');
		  document.getElementById('passWordError').innerHTML = '';   
	   
	   }else{
		   
		   console.log('invalid password');
		   document.getElementById('passWordError').innerHTML = 'please Enter valid password';
	   }
	     
	   
   }
   
   function validateState(){
	   
	    console.log("Name function is running")
	    const button = document.getElementById('button')
	    const state = document.getElementById('state').value
	    console.log(state)
	    console.log(state.length)
	    if(state!=null){
	    	
	    	document.getElementById("err2").innerHTML="<span style='color:green'>state is valid</span>"
	    	button.removeAttribute("disabled")
	   
	    }else{
	    	
	    	document.getElementById("err2").innerHTML="<span style='color:red'>state is invalid</span>"
            button.setAttribute("disabled","")
	    }
	  
	  
 }
   function validateDistrict(){
	   
	    console.log("Name function is running")
	    const button = document.getElementById('button')
	    const district = document.getElementById('district').value
	    console.log(district)
	    console.log(district.length)
	    if(state.length>3 && state.length<=50){
	    	
	    	document.getElementById("err3").innerHTML="<span style='color:green'>district is valid</span>"
	    	button.removeAttribute("disabled")
	   
	    }else{
	    	
	    	document.getElementById("err3").innerHTML="<span style='color:red'>district is invalid</span>"
            button.setAttribute("disabled","")
	    }
	  
	  
}
function validateEmail(){
	    const em = document.getElementById('email').value;
	    const button = document.getElementById('button');
	    if (em.match(/^[a-z]+@[a-z]+\.[a-z]{3}$/)) {
	      document.getElementById("emailErr").innerHTML = "<span style='color: green'>Email is valid</span>";
	      button.removeAttribute("disabled");
	   
	    } else {
	      document.getElementById("emailErr").innerHTML = "<span style='color: red'>Invalid Email format</span>";
	      button.setAttribute("disabled", "");
	    }
	  	
}
function validateNo(){
	
    console.log("Number function is running")
    const button = document.getElementById('button')
    const phoneNo = document.getElementById('phoneNo').value
    
    if(phoneNo==10){
    	
    	document.getElementById("phoneErr").innerHTML="<span style='color:green'>phoneNo is valid</span>"
    	button.removeAttribute("disabled")
   
    }else{
    	
    	document.getElementById("phoneErr").innerHTML="<span style='color:red'>phoneNo is Invalid</span>"
        button.setAttribute("disabled","")

    }
  
}	
</script>
</head>
<style>
h6 {
	font-size: 20px;
	text-align: center;
	color: red;
}

.required {
	content:"*";
	color: red;
	font-size: xp;
}
</style>
<body>
	<nav class="navbar navbar-expand-lg bg-warning">
		<div class="container-fluid">

			<a class="navbar-brand" href="#"> <img
				src="data:image/jpeg;base64,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"
				alt="logo" width="50" height="50">
			</a> <img
				src="https://e7.pngegg.com/pngimages/679/69/png-clipart-home-assistant-computer-icons-home-automation-kits-amazon-echo-home-blue-logo.png"
				alt="logo" width="50" height="50"> </a>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>

				</ul>

				<ul class="nav nav-pills nav-fill nav justify-content-end">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignIn.jsp">SignOut</a></li>
				</ul>

			</div>
	</nav>
  
	<form class="form" action="signUp" method="post">

		<div class="container w-50 border border-dark border-5 mt-5">
 
             <h3 style="text-align: center">SIGN UP</h3>
                
			<div class="mb-3">
			
				<label class="form-label">FirstName</label> <input onblur="handleName()" id="firstName" type="text"
					class="form-control" placeholder="FirstName" name="firstName" required="required">
					<span style="color:red" id="err"></span>
			</div>

			<div class="mb-3">
			
				<label class="form-label">LastName</label> <input onblur="handleName1()" id="lastName" type="text"
					class="form-control" placeholder="lastName" name="lastName"
					required="required">
					<span style="color:red" id="err1"></span>
			</div>

			<div class="mb-3">
				<label class="form-label">DOB</label> <input type="date"
					class="form-control" placeholder="dob" name="dob"
					required="required">
			</div>

			<div class="mb-3">
				<label class="form-label">PhoneNo</label> <input type="tel" onblur = "validateNo()" id="phoneNo"
					class="form-control" placeholder="PhoneNo" name="phoneNo"
					required="required">
					<span id="phoneErr"></span>
			</div>
			<h6>${error}</h6>
			<div class="mb-3">
				<label class="form-label">Email</label> <input type="email" onblur="validateEmail()" id="email"
					class="form-control" placeholder="Email" name="email"
					required="required">
					<span id="emailErr"></span>
			</div>

			<div class="mb-3">
				<label for="inputState" class="form-label" required="required">State</label>
				<select id="state" onblur = "validateState()" name="state" class="form-select">
					<option value="">--- Select State Name ---</option>
					<option value="Andaman and Nicobar">Andaman and Nicobar</option>
					<option value="Arunachal Pradesh">Arunachal Pradesh</option>
					<option value="Andhra Pradesh">Andhra Pradesh</option>
					<option value="Assam">Assam</option>
					<option value="Bihar">Bihar</option>
					<option value="Chandigarh">Chandigarh</option>
					<option value="Chhattisgarh">Chhattisgarh</option>
					<option value="Delhi">Delhi</option>
					<option value="Goa">Goa</option>
					<option value="Gujarat">Gujarat</option>
					<option value="Haryana">Haryana</option>
					<option value="Himachal Pradesh">Himachal Pradesh</option>
					<option value="Jammu and Kashmir">Jammu and Kashmir</option>
					<option value="Jharkhand">Jharkhand</option>
					<option value="karnataka">Karnataka</option>
					<option value="Kerala">Kerala</option>
					<option value="Ladakh">Ladakh</option>
					<option value="Maharashtra">Maharashtra</option>
					<option value="Manipur">Manipur</option>
					<option value="Madhya Pradesh">Madhya Pradesh</option>
					<option value="Meghalaya">Meghalaya</option>
					<option value="Mizoram">Mizoram</option>
					<option value="Nagaland">Nagaland</option>
					<option value="Odisha">Odisha</option>
					<option value="Puducherry">Puducherry</option>
					<option value="Punjab">Punjab</option>
					<option value="Rajasthan">Rajasthan</option>
					<option value="Sikkim">Sikkim</option>
					<option value="Tamil Nadu">Tamil Nadu</option>
					<option value="Tripura">Tripura</option>
					<option value="UT of DNH and DD">UT of DNH and DD</option>
					<option value="Uttarakhand">Uttarakhand</option>
					<option value="Uttar Pradesh">Uttar Pradesh</option>
					<option value="West Bengal">West Bengal</option>

				</select>
					<span id ="err2"></span>
			</div>

			<div class="mb-3">
				<label class="form-label">District</label> <input type="text" onblur="validateDistrict()" id="district"
					class="form-control" placeholder="district" name="district"
					required="required" />
					<span id ="err3"></span>
			</div>


			<div class="mb-3">
				<label class="form-label">PassWord</label> <input onclick="validatePassWord()" id="passWord" type="PassWord" 
					class="form-control" placeholder="PassWord" name="passWord"
					required="required">
					<span id="passWordError" style="color:red"></span>
			</div>

			<div class="mb-3">
				<label class="form-label">ConfirmPassWord</label> <input onclick="validatePassWord()" id="confirmPassWord"
					type="PassWord" class="form-control" placeholder="PassWord"
					name="ConfirmPassWord" required="required">
					<span id="passWordCompare" style="color:red"></span>
			</div>

			
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckDefault" required="required"> <label
					class="form-check-label" for="flexCheckDefault">Confirm
					registration </label>
			</div>


			<br> <input type="reset" class="btn btn-success"> <input
				type="submit" id="button" class="btn btn-success">

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