<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
	<head><title>ADBL Signup Review</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css">
   <style>
     	table tr td{
    	 padding-bottom: 1em;} 
    	 

@font-face {
	font-family: myFirstFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/preeti.TTF);
}
@font-face {
	font-family: mySecondFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/Sunil_1.ttf);
}
.nep1{
font-family: mySecondFont;
	color: #344c4c;
}
.nep {
	font-family: myFirstFont;
	color: #344c4c;
}

/* input, .eng, span {
	font-family: arial;
} */
input{
border: 1px solid #94b8b8;
  padding:3px 8px;
  font-size:80%;
  color:#3d5c5c;}
body {
	font-size: 180%;
	
}
	 
    	 
    </style>
    
    </head>
    
    <body style="background-color: mediumaquamarine;">
    	<div class="col-md-6 col-centered" style="text-align: center;padding-bottom: 10px;">
    		<img src="${pageContext.request.contextPath}/resources/images/adbl-logo.png" alt="logo" class="img-responsive" />
    		
    		<h4>SIGNUP REVIEW</h4>
    		<hr>
    		
    		<spring:url value="/signup" var="formUrl" />
    		
    		<table style="width:80%; margin:auto;">
    		<tr>
    				<td colspan="2"><label for="name">Advertise No</label></td>
    				<td>${sessionScope.user.ad_no }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="name">Name in Devnagari</label></td>
    				<td>
    				
						${sessionScope.user.name } 
    				
    				
    				</td>
    			</tr>
    			
    			<tr>
    				<td colspan="2"><label for="name">Name in English</label></td>
    				<td>${sessionScope.user.name1 }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="name">Father</label></td>
    				<td>${sessionScope.user.father }</td>
    			</tr>    			
    			<tr>
    				<td colspan="2"><label for="name">Mother</label></td>
    				<td>${sessionScope.user.mother }</td>
    			</tr>      			
    			<tr>
    				<td colspan="2"><label for="name">Spouse</label></td>
    				<td>${sessionScope.user.spouse }</td>
    			</tr>  
   			<tr>
    				<td colspan="2"><label for="name">Permanent Address</label></td>
    				<td>${sessionScope.user.permanentaddress }</td>
    			</tr>
  			<tr>
    				<td colspan="2"><label for="name">Temporary Address</label></td>
    				<td>${sessionScope.user.tempaddress }</td>
    			</tr> 
    			<tr>
    				<td colspan="2"><label for="citizenship-no">Citizenship No</label></td>
    				<td>${sessionScope.user.citizenshipno }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Phone Number</label></td>
    				<td>${sessionScope.user.phonenumber }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Email</label></td>
    				<td>${sessionScope.user.email }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Date of birth</label></td>
    				<td>${sessionScope.user.dob }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Age Year</label></td>
    				<td>${sessionScope.user.ageyr }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Age Month</label></td>
    				<td>${sessionScope.user.agemth }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Age Day</label></td>
    				<td>${sessionScope.user.ageday }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Last passed Exam</label></td>
    				<td>${sessionScope.user.lastpassedexam }</td>
    			</tr>
   			<tr>
    				<td colspan="2"><label for="phone-no">Last exam passed Date BS</label></td>
    				<td>${sessionScope.user.passeddatebs }</td>
    			</tr>
  			<tr>
    				<td colspan="2"><label for="phone-no">Last exam passed Date AD</label></td>
    				<td>${sessionScope.user.passeddatead }</td>
    			</tr>    			
    			<tr>
    				<td colspan="2"><label for="user-name">User name</label></td>
    				<td>${sessionScope.user.username }</td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="user-name">Password</label></td>
    				<td>********</td>
    			</tr>
    			<tr>
    			<td><a href="<spring:url value="/"/>" style="font-size: 80%">Already a member? Login</a></td>
    				<td></td>
    				<td><a href="<spring:url value="/nav/signup"/>" style="font-size: 80%">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<spring:url value="/signup"/>" style="font-size: 80%">SIGNUP</a></td>
    			</tr>
    		</table>
	    </div>
    </body>
</html>
 