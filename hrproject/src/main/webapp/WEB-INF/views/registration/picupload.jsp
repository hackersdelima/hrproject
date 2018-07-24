<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="../include.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body class="background">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>IMAGE UPLOAD FORM</h2>
					<c:if test="${not empty msg }">
						<div class="col-md-4 col-sm-4 col-xs-12 pull-right">
							<div class="alert alert-success">
								<strong>${msg }</strong>
							</div>
						</div>
					</c:if>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<spring:url value="/reg/documents_upload" var="uploadUrl" />
					<form method="post" enctype="multipart/form-data"
						action="${uploadUrl }">
						<div class="form-group">
							<div class="col-md-12">
								<div class="col-md-4">


									<select class="form-control" name="document_type">
										<option value="">Select Type</option>
										<option value="101">Photo</option>
										<option value="102">Citizenship No</option>
										<option value="103">Character Certificate</option>
										<option value="104">Marksheet</option>
										<option value="105">Bank Voucher</option>
																			
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
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-12 col-xs-12">
			<div class="x_panel">

				<div class="x_title">
					<h2>UPLOADED DATAS</h2>
					<c:if test="${not empty msg }">
						<div class="col-md-4 col-sm-4 col-xs-12 pull-right">
							<div class="alert alert-success">
								<strong>${msg }</strong>
							</div>
						</div>
					</c:if>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<table
						class="table jambo_table table-striped table-bordered dt-responsive nowrap display dataTable dtr-inline"
						id="datatableaa" style="font-size: 95%; width: 100%;">
						<thead>
							<tr>
								<td>ID</td>
								<td>IMAGE TYPE</td>
								<td>IMAGE</td>
								<td>Pic</td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<spring:url value="/report/registeredImages" var="url"/>
	<input type="hidden" id="url" value="${url }">
<script>
$(document).ready(function() {
	var url = $("#url").val();
	 $('#datatableaa').DataTable( {
		 "ajax": {
	            "url":url,
	            "dataSrc": ""
	        },
	        "columns":[
	        	{"data":"images_id"},
	        	{"data":"imagetype"},
	        	{"data":"imagename"} ,
	        	 {
                    "render": function (data, type,row, meta) {
                        return '<img height=100 width=100 src=//localhost/adblmis/images/'+row.imagename+'>';
                    }
                }
	        ],
	        dom : 'Bfrtip',
	        buttons : [
						'copy', 'csv', 'excel', 'pdf', 'print'
						 ], 
	    } );
} );
</script>
</body>
</html>