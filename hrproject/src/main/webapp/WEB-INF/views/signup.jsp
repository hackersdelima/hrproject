<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head><title>ADBL Signup</title>
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
    		<img src="${pageContext.request.contextPath}/resources/images/adbl-logo.png" alt="logo" class="img-responsive" />
    		
    		<h4>SIGNUP FORM</h4>
    		<hr>
    		
    		<spring:url value="/signup_review" var="formUrl" />
    		
    		<form:form cssClass="login-form"  action="${formUrl }" method="POST" modelAttribute="user">
    		<table style="width:80%; margin:auto;">
    		<tr>
    				<td colspan="2"><label for="ad_no">Advertise No</label></td>
    				<td><form:select path="ad_no" cssClass="form-control" id="ad_no" >
    				<option value="${sessionScope.user.ad_no }" selected>${sessionScope.user.ad_no }</option>
    				<c:forEach items="${ad_nos }" var="a">
    					<option  value="${a.advertiseno }">${a.advertiseno }</option>
    				</c:forEach>
    				</form:select></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="name">Name</label></td>
    				<td><form:input path="name" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="citizenship-no">Citizenship No</label></td>
    				<td><form:input path="citizenshipno" cssClass="uname" id="citizenship-no" placeholder="Enter Citizenship No" value="${sessionScope.user.citizenshipno }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Phone Number</label></td>
    				<td><form:input path="phonenumber" cssClass="uname" id="phone-no" placeholder="Enter Phone Number" value="${sessionScope.user.phonenumber }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Email</label></td>
    				<td><form:input path="email" cssClass="uname" id="email" placeholder="Enter Email" value="${sessionScope.user.email }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="user-name">Username</label></td>
    				<td><form:input path="username" cssClass="uname" id="user-name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="user-name">Password</label></td>
    				<td><form:input path="password" cssClass="uname" id="password" placeholder="Enter Password" value="${sessionScope.user.password }"/></td>
    			</tr>
    			<tr>
    				<td><a href="<spring:url value="/"/>" style="font-size: 80%">Already a member? Login</a></td>
    				<td><input type="submit" class="form-control pull-right" value="Next"></td>
    			</tr>
    			
    		</table>
	   		</form:form>
	    </div>
    </body>
</html>
 