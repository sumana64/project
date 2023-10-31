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
	    	
	    	button.setAttribute("disabled","")
	    	document.getElementById("err1").innerHTML="<span style='color:purple'>Name is Invalid</span>"

	    	
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
	    if(state.length>3 && state.length<=50){
	    	
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
    const no = document.getElementById('phoneNo').value
    if(no==10){
    	
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
	<h4 style="text-align: center">SignUp Page</h4>
	<form class="form" action="signUp" method="post">

		<div class="container w-50 border border-dark border-5 mt-5">

                
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
				<label class="form-label">State</label> <input type="text" onblur="validateState()" id="state"
					class="form-control" placeholder="State" name="state"
					required="required">
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