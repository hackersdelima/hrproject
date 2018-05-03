<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
	<head><title>ADBL Login</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"></head>
    <body style="background-color: mediumaquamarine;">
    	<div class="col-md-6 col-centered" style="text-align: center;padding-bottom: 10px;">
    		<img src="${pageContext.request.contextPath}/resources/images/adbl government logo.jpg" alt="logo" class="img-responsive" />
    		<p style="color:red;">${msg}</p>
    		<br>
    		<br>
    		
    		<spring:url value="/login/" var="formUrl" />
    		
    		<form:form cssClass="login-form"  action="${formUrl }" modelAttribute="user">
    		<table style="width:80%; margin:auto;">
    			<tr>
    				<td colspan="2"><label for="user-name">Username</label></td>
    					
    				<td><form:input path="username" cssClass="uname" id="user-name" placeholder="Enter Username"/></td>
    				<td colspan="2"><input type="submit" value="Login"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="password">Password</label></td>
    				
    				<td><form:input path="password" cssClass="uname" id="password" placeholder="Enter Password"/></td>
    				<td><a href="<spring:url value="/nav/signup"/>" style="font-size: 80%;">New Member? Signup Here!</a></td>
    			</tr>
    			<tr>
    				
    				
    			</tr>
    		</table>
	   		</form:form>
	    </div>
    </body>
</html>
 