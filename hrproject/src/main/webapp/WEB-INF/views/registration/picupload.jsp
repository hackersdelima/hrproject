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
	<div class="col-md-10 col-sm-10 col-xs-10">
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
					<spring:url value="/document/upload" var="uploadUrl" />
					<form method="post" enctype="multipart/form-data"
						action="${uploadUrl }">
						<div class="form-group">
							<div class="col-md-12">
								<div class="col-md-3">
									<select class="form-control" name="imagetype">
										<option value="">Select Type</option>
										<option value="PHO">Photo</option>
										<option value="CHRC">Character Certificate</option>
										<option value="MS">Marksheet</option>
									</select>
								</div>
								<div class="col-md-3">
									<input type="text" class="form-control" name="description"
										placeholder="Description">
								</div>
								<div class="col-md-3">
									<input class="form-control" type="file" name="file"
										accept="image/*" required>
								</div>
								<div class="col-md-3">
									<input type="submit" class="btn btn-success" value="Upload">
								</div>
								<input type="hidden" id="userid" value="${userDetail.userid }"
									name="userid">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<div class="panel panel-default">
	<div class="panel-body">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Image Type</th>
					<th>Description</th>
					<th>Image</th>
				</tr>
			</thead>
			<tbody ng-app="sa" ng-controller="foo">
			
				<tr ng-repeat="result in results">
					<td>{{result.imagetype}}</td>
					<td>{{result.description}}</td>
					<td><img  src="data:image/png;base64,{{result.image}}" id="imagepreview" style="width: 100px; height: 80px;" ></td>
				</tr>
			
			</tbody>
		</table>
</div>
</div>

<!-- Creates the bootstrap modal where the image will appear -->
<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Image preview</h4>
      </div>
      <div class="modal-body">
        <img src="" id="imagepreview" style="width: 400px; height: 264px;" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

		<script
			src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>

		<script type="text/javascript">
		var userid = $("#userid").val();
		angular
				.module("sa", [])
				.controller(
						'foo',
						function($scope, $http) {

							$scope.cashsummary = function() {
								// var url = serviceBase + cashSummaryUrl;
								var url = 'http://localhost:8080/hrproject/document/findByUserid/'
										+ userid;
								$http.get(url).success(function(data) {
									$scope.results = data.data;
								})
							};

							$scope.cashsummary();
						});
	</script>
</body>
</html>