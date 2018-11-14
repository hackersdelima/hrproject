<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.alert {
	position: absolute;
	left: 0px;
	top: 0px;
	z-index: 1;
}
</style>
</head>
<body class="background">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-12 col-xs-12"
			style="box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);">
			<div class="x_panel">
				<div class="x_title">

					<img
						src="${pageContext.request.contextPath}/resources/images/adbl-logo.png"
						alt="logo" class="img-responsive"
						style="width: 100%; box-shadow: 5px 6px #888888;" /> <br>
					<h4>
						<strong>DOCUMENTS</strong>
					</h4>

				</div>

				<div class="x_content">
					<table id="datatable"
						class="table jambo_table table-striped table-bordered dt-responsive nowrap display dataTable dtr-inline"
						style="font-size: 95%; width: 100%;">
						<thead>
							<tr>
								<th>Degree</th>
								<th>Document (.jpg)</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${educationdetail}" var="f">
								<tr>
									<td>${f.exam_name }</td>
									<td><input type="file" name="file"></td>
									<td><input type="submit" value="Upload"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$(".alert").delay(2000).slideUp(200, function() {
			$(this).alert('close');
		});
		
		$( '#formId' )
		  .submit( function( e ) {
		    $.ajax( {
		      url: 'FormSubmitUrl',
		      type: 'POST',
		      data: new FormData( this ),
		      processData: false,
		      contentType: false
		    } );
		    e.preventDefault();
		  } );
	</script>
</body>
</html>