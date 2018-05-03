<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
	<head><title>ADBL Login</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css"></head>
    <body style="background-color: mediumaquamarine;">
    	<div class="col-md-6 col-centered" style="text-align: center;">
    		<img src="${pageContext.request.contextPath}/resources/images/adbl government logo.jpg" alt="logo" class="img-responsive" />
    		<p style="color:red;">${msg}</p>
    		<br>
    		<br>
    		
    		<spring:url value="/" var="formUrl" />
    		
    		<form:form cssClass="login-form" method="POST" action="${formUrl }" modelAttribute="user">
	   			<label for="user-name">Username</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   			<form:input path="username" cssClass="uname" id="user-name"/>
	   			
	   			
				<label >Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" size=45 placeholder="Enter your password" class="uname" /></label><br />
	   			<div style="padding-bottom: 60px;">
	   				<input type="submit" class="btn btn-primary" value="Login">
	   				<a href="">New Member? Signup Here!</a>
    			</div>
	   		</form:form>
	    </div>
    </body>
</html>
 