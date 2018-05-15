<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="../include.jsp"></jsp:include>
<spring:url value="/reg/secondForm" var="previousUrl"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="background">
<spring:url value="/reg/save" var="uploadUrl"/>
<form method="post" enctype="multipart/form-data" action="${uploadUrl }">
<div class="form-group">
			<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
			<a class="btn btn-success" href="${previousUrl }">Previous</a>
				 <a href="<spring:url value="/reg/cancel"/>" class="btn btn-danger"
					type="button" >Cancel</a>
				<button class="btn btn-primary" type="reset">Reset</button>
				<input type="submit" class="btn btn-success" value="Save">
			</div>
		</div>
		<hr>
		<div class="col-md-4">
Upload Your Picture: <input class="form-control" type="file" name="file" accept="image/*">
</div>
	
</form>
</body>
</html>