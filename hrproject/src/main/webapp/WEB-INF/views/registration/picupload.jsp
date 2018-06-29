<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="../include.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="background">
	<spring:url value="/reg/documents_upload" var="uploadUrl" />
	<form method="post" enctype="multipart/form-data"
		action="${uploadUrl }">
		<div class="form-group">
			<div class="col-md-12">
				<div class="col-md-4">


					<select class="form-control" name="document_type">
						<option value="">Select Type</option>
						<option value="101">Marks Sheet</option>
						<option value="102">Bank Voucher</option>
					</select>
				</div>
				<div class="col-md-4">
					<input class="form-control" type="file" name="files"
						accept="image/*" required>
				</div>
				<div class="col-md-4">
					<input type="submit" class="btn btn-success" value="Save">
				</div>
			</div>
	</form>
</body>
</html>