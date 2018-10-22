<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	<div class="panel panel-default">

		<div ng-app="sa" ng-controller="foo">
			<div ng-repeat="result in results">
				<div class="panel-heading">
					<span style="color: blue">${msg }</span>
					<table class="table table-bordered">
						<tbody>
							<tr>
								<td>User ID: <span id="userid">${userid }</span></td>
								<td>Status: <span id="status">{{result.status}}</span></td>
								<spring:url value="/verification/applicantactivate/${userid }"
									var="activate" />
								<spring:url value="/verification/applicantdeactivate/${userid }"
									var="deactivate" />
								<td>Action: <span><a class="btn btn-link"
										id="activate" href="${activate }">Activate</a></span> <span><a
										href="${deactivate }" class="btn btn-link" id="deactivate">Deactivate</a></span></td>
							</tr>

						</tbody>
					</table>

				</div>
				<div class="panel-body">
					<h4>APPLICANT DETAIL</h4>
					<table class="table table-bordered table-hover">
						<tbody>
							<tr>
								<td><strong>Advertise No:</strong></td>
								<td>{{result.advertiseno}}</td>
								<td><strong>Name:</strong></td>
								<td>{{result.name1}}</td>
								<td><strong>Father:</strong></td>
								<td>{{result.father}}</td>
									<td><strong>Grand Father:</strong></td>
								<td>{{result.grandfather}}</td>
							</tr>
							<tr>
								<td><strong>Mother:</strong></td>
								<td>{{result.mother}}</td>
								<td><strong>Spouse:</strong></td>
								<td>{{result.spouse}}</td>
							</tr>
							<tr>
								
								<td><strong>Permanent Address:</strong></td>
								<td>{{result.permanentaddress}}</td>
								<td><strong>Temp. Address:</strong></td>
								<td>{{result.tempaddress}}</td>
								<td><strong>Citizenship No:</strong></td>
								<td>{{result.citizenshipno}}</td>
							</tr>
							<tr>
								<td><strong>Citizenship Issued Date:</strong></td>
								<td>{{result.citizenshipIssuedDate}}</td>
								<td><strong>Citizenship Issued Dist.:</strong></td>
								<td>{{result.citizenshipIssuedDistrict}}</td>
								<td><strong>Phone Number:</strong></td>
								<td>{{result.phonenumber}}</td>
								<td><strong>Email:</strong></td>
								<td>{{result.email}}</td>
							</tr>
							<tr>
								<td><strong>DOB:</strong></td>
								<td>{{result.dob}}</td>
								<td><strong>Age(yr):</strong></td>
								<td>{{result.ageyr}}</td>
								<td><strong>Age(mth):</strong></td>
								<td>{{result.agemth}}</td>
								<td><strong>Age(day):</strong></td>
								<td>{{result.ageday}}</td>
							</tr>
							<tr>
								<td><strong>Last Passed Exam:</strong></td>
								<td>{{result.lastpassedexam}}</td>
								<td><strong>Passed Date(B.S.):</strong></td>
								<td>{{result.passeddatebs}}</td>
								<td><strong>Passed Date(A.D.):</strong></td>
								<td>{{result.passeddatead}}</td>
								<td><strong>Open Comp::</strong></td>
								<td>{{result.open_comp}}</td>
							</tr>
							<tr>
								<td><strong>Mahila:</strong></td>
								<td>{{result.mahila}}</td>
								<td><strong>Adibasi:</strong></td>
								<td>{{result.adibasi}}</td>
								<td><strong>Madhesi:</strong></td>
								<td>{{result.madhesi}}</td>
								<td><strong>Dalit:</strong></td>
								<td>{{result.dalit}}</td>
							</tr>
							<tr>
								<td><strong>Apanga:</strong></td>
								<td>{{result.apanga}}</td>
								<td><strong>Pichadiyeko Chetra:</strong></td>
								<td>{{result.pichadiyeko_chetra}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12">
	<div class="panel panel-default col-md-12">
		<div class="panel-heading">EDUCATION DETAIL</div>
		<div class="panel-body">
			<table id="tablee" class="table table-bordered table-hover">
				<thead>
					<tr>
					<th>Institute Name</th>
					<th>Exam Name</th>
					<th>Completion Year</th>
					<th>Level</th>
					<th>Total Marks/Percentage</th>
					<th>Major Subject</th>
					<th>Kaifiyat</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	</div>
	<div class="col-md-12">
	<div class="panel panel-default col-md-4">
		<div class="panel-heading">UPLOADS</div>
		<div class="panel-body">
			<div class="col-md-6">
				<img alt="" id="image1" class="image" src="" style="width: 100%;">
			</div>
			<div class="col-md-6">
				<img alt="" id="image2" class="image" src="" style="width: 100%;">
			</div>
		</div>
	</div>
</div>
	<!-- Creates the bootstrap modal where the image will appear -->
	<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Image preview</h4>
				</div>
				<div class="modal-body">
					<img src="" id="imagepreview" style="width: 400px; height: 264px;">
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
		var userid = $("#userid").html();
		angular
				.module("sa", [])
				.controller(
						'foo',
						function($scope, $http) {

							$scope.cashsummary = function() {
								// var url = serviceBase + cashSummaryUrl;
								var url = '../../admin/applicants/'
										+ userid;
								$http.get(url).success(function(data) {
									$scope.results = data.data;
								})
							};

							$scope.cashsummary();
						});

		$.ajax({
			url : '../../report/findByIdEducation/'+userid
		}).then(function(data) {
				//datatable		   
				$("#tablee").dataTable({
					paging : false,
					aaData : data.data,
					aoColumns : [ {
						"mData" : "institute_name"
					},
					{
						"mData" : "exam_name"
					},
					{
						"mData" : "completion_year"
					},
					{
						"mData" : "level"
					},
					{
						"mData" : "totalmarks_percentage"
					},
					{
						"mData" : "major_sub"
					},
					{
						"mData" : "kaifiyat"
					},
					]
				});
		});

		$.ajax({
			type : "GET",
			url : "../../document/findByUserid/"
					+ userid,
			success : function(result) {
				$("#image1").attr("src",
						"data:image/png;base64," + result.data[0].image + "");
				$("#image2").attr("src",
						"data:image/png;base64," + result.data[1].image + "");
			}
		});
	</script>
	<script>
		$(".image").on("click", function() {
			$('#imagepreview').attr('src', $(this).attr('src')); // here asign the image to the modal when the user click the enlarge link
			$('#imagemodal').modal('show'); // imagemodal is the id attribute assigned to the bootstrap modal, then i use the show function
		});
	</script>
</body>
</html>