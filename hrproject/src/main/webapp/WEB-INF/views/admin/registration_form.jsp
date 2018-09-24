	<%@ page contentType="text/html; charset=UTF-8" %>
	<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include.jsp"></jsp:include>
<spring:url value="/reg/next" var="formUrl"></spring:url>
<html>
<head>
<style>

body {
	font-size: 180%;
	
}

</style>

  <style>
    @media print {
      #pdf-button {
        display: none;
      }
    }
  </style>
</head>
<body class="background container">


	<form method="post" action="${formUrl }">
		<div class="form-group eng">
			<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
				<a href="<spring:url value="/reg/cancel"/>"class="btn btn-danger" type="button">Cancel</a>
				<button class="btn btn-primary" type="reset">Reset</button>
				<input type="submit" class="btn btn-success" value="Next">
				<input id="pdf-button" type="button" value="Download PDF" onclick="downloadPDF()" />
			</div>
		</div>
		<div  class="col-md-12 printhtml" style="margin-top:30px;">

कार्यालय रसिद
<img src="${pageContext.request.contextPath}/resources/images/logo.png">
		</div>
	</form>
	<script>

		$("#advertiseno").blur(function()
				{
				var advertiseno=$(this).val();
				var dataString = 'advertiseno='+ advertiseno;
				$.ajax
				({
				type: "POST",
				url: "../reg/ad_no_blur",
				data: dataString,
				cache: false,
				success: function(html)
				{
				alert("fds");
				} 
				});
				});
				
	
	</script>
</body>
</html>