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
    </style>
    
    </head>
    
    <body style="background-color: mediumaquamarine;">
    	<div class="col-md-6 col-centered" style="text-align: center;padding-bottom: 10px;">
    		<img src="${pageContext.request.contextPath}/resources/images/adbl government logo.jpg" alt="logo" class="img-responsive" />
    		
    		<h4>SIGNUP REVIEW</h4>
    		<hr>
    		
    		<spring:url value="/signup" var="formUrl" />
    		
    		<table style="width:80%; margin:auto;">
    			<tr>
    				<td colspan="2"><label for="name">Name</label></td>
    				<td>${sessionScope.user.name }</td>
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
    				<td colspan="2"><label for="user-name">Username</label></td>
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
 