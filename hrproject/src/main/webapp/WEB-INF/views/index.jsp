<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>ADBL Login</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin.css"
	type="text/css">
</head>
<body style="background-color: mediumaquamarine;">
	<div class="col-md-6 col-centered"
		style="text-align: center; padding-bottom: 10px;">
		<img
			src="${pageContext.request.contextPath}/resources/images/adbl-logo.png"
			alt="logo" class="img-responsive" />
		<p style="color: red;">${msg}</p>
		<br> <br>

		<spring:url value="/login/" var="formUrl" />

		<form class="login-form" action="${formUrl }" method="POST">
			<table style="width: 80%; margin: auto;">
			<caption><a href="<spring:url value="/nav/signup"/>"
						style="font-size: 80%;">New Member? Signup Here!</a></caption>
				<tr>
					<td colspan="2"><label for="user-name">Username</label></td>

					<td><input type="text" name="username" class="uname"
							id="user-name" type="password" placeholder="Enter Username" /></td>
				</tr>
				<tr>
				<td colspan="2"><label for="password">Password</label></td>
					<td><input type="text" name="password" class="uname" id="password"
							type="password" placeholder="Enter Password" /></td>
					
					<td colspan="2"><input type="submit" class="form-control btn btn-success" value="Login" /></td>
				</tr>
			
			</table>
		</form>
	</div>
</body>
</html>

