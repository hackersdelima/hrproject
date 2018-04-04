
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include.jsp"></jsp:include>

<html>
<head>
<style>
	.workform input{
	border:none;
	width: 100%;
	}
</style>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Registration</li>
				<li class="breadcrumb-item active" aria-current="page">Student
					Registration</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>STUDENT REGISTRATION FORM</h2>

				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				
				<form method="post" action="studentRegistration" id="form"></form>
				<button type="submit" class="btn btn-success " form="form">
					<i class="fa fa-check"></i> SUBMIT
				</button>
				<div class="clearfix"></div>

			</div>
			<div class="x_content">
				<div class="" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
						<li role="presentation" class="active"><a
							href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
							aria-expanded="true">Office Work</a></li>
						<li role="presentation" class=""><a href="#tab_content2"
							role="tab" id="profile-tab" data-toggle="tab"
							aria-expanded="false">Registration Form</a></li>
						<li role="presentation" class=""><a href="#tab_content3"
							role="tab" id="profile-tab2" data-toggle="tab"
							aria-expanded="false">Admission Card</a></li>
						
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tab_content1" aria-labelledby="home-tab">
							<table class="table">
								<tbody>
									<tr>
										<td>
											<h6>
												<strong>Registration No.</strong>
											</h6> <input type="text" class="form-control" name="LegacyId"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Date</strong>
											</h6> <input type="date" class="form-control" name="studentname"
											id="studentname" form="form" required>
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Subject</strong>
											</h6> <!-- <select class="form-control" name="sex" form="form">
												<option value="" selected>Select sex</option>
												<option value="m">Male</option>
												<option value="f">FeMale</option>
												<option value="o">Other</option>
										</select> -->
										<input type="text" class="form-control" name="studentname"
											id="studentname" form="form" required>
										</td>
										<td>
											<h6>
												<strong>Advertisement Number</strong>
											</h6> <!-- <select class="form-control" name="Language" form="form">
												<option value="" selected>Select mother language</option>


										</select> -->
										<input type="text" class="form-control" name="studentname"
											id="studentname" form="form" required>
										</td>
										<td>
											<h6>
												<strong>Position</strong>
											</h6> <!-- <select class="form-control" name="sCast" form="form">
												<option value="" selected>Select ethnic group</option>

												<option value=""></option>

										</select> -->
										<input type="text" class="form-control" name="studentname"
											id="studentname" form="form" required>
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Competition Type:&nbsp;&nbsp;Open </strong>
											</h6>  
											<!-- <select class="form-control" name="sReligion" form="form">
												<option value="" selected>Select religion</option>
												<option value="Hindu">Hindu</option>
												<option value="Muslim">Muslim</option>
												<option value="Buddhism">Buddhism</option>
												<option value="Christian">Christian</option>
										</select> -->
										<input type="text" class="form-control" name="studentname"
											id="studentname" form="form" required>
										</td>
										<td>
											<h6>
												<strong>Competition Type:&nbsp;&nbsp;Division</strong>
											</h6> <select class="form-control" name="differentlyabledYN" form="form">
												<option value="">Female</option>
												<option value="">Janjati</option>
												<option value="">Madhesi</option>
												<option value="">Dalit</option>
												<option value="">Pichidiyeko Chetra</option>
										</select>
										</td>
										<td>
											<h5 style="color: blue">
												<strong>Competition Type:&nbsp;&nbsp;If Differently-able yes</strong>
												</h6>
												<select class="form-control" name="differentlyabledtype" form="form">
													<option value="">Apanga</option>
													<c:forEach items="${disabledlist }" var="disabled">
														<option value="${disabled.id }">${disabled.typehead }</option>
													</c:forEach>

												</select>
										</td>
									</tr>
									<tr>
										<td>
											<strong style="text-decoration: underline; font-size: 16px;">Higher Education Achieved:-</strong>
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>DOB(YYYY-MM-DD) B.S.</strong>
											</h6> <input type="text" class="form-control" name="dob"
											maxlength="10" id="nepaliDate1" form="form"
											placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>DOB(YYYY-MM-DD) A.D.</strong>
											</h6> <input type="text" class="form-control" name="doben"
											maxlength="10" form="form" id="englishDate1"
											placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Citizenship</strong>
											</h6> <input type="text" class="form-control" name="admissiondate"
											maxlength="10" id="nepaliDate14" form="form"
											placeholder="2051-07-25" required>
										</td>
										<td>
											<h6>
												<strong>Current Age: </strong>
											</h6> <input type="text" class="form-control"
											name="admissiondateen" maxlength="10" form="form"
											id="englishDate14" placeholder="1994-11-11" required>
										</td>
									</tr>

									<tr>
										<td>
											<h4 style="text-decoration: underline;">
												<strong>Birth Certificate Detail:-</strong>
											</h4>
											<hr>
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Temporary Address: </strong>
											</h6> <input type="text" class="form-control"
											name="birthcertificateno" form="form">
										</td>
										<td>
											<h6>
												<strong>Permanent Address: </strong>
											</h6> <input type="text" class="form-control"
											name="birthcertificateissuedby" form="form">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Father name: </strong>
											</h6> <input type="text" class="form-control"
											name="birthcertificateissueddate" maxlength="10"
											id="nepaliDate2" form="form" placeholder="fathername">
										</td>
										<td>
											<h6>
												<strong>Mother name: </strong>
											</h6> <input type="text" class="form-control"
											name="birthcertificateissueddateen" maxlength="10"
											form="form" id="englishDate2" placeholder="mothername">
										</td>
									</tr>
									<tr>
										<td>
											<h4 style="text-decoration: underline;">
												<strong>Contact Details:</strong>
											</h4>
											<hr>
										</td>
									</tr>

									<tr>
										<td>
											<h6>
												<strong>District</strong>
											</h6> <select class="form-control selectpicker district"
											data-show-subtext="true" data-live-search="true"
											name="district" form="form">
												<option value="" selected>Select district</option>
												<c:forEach items="${dislist }" var="dis">
													<option value="${dis.districtCode }">${dis.districtName }</option>
												</c:forEach>


										</select>
										</td>
										<td>
											<h6>
												<strong>Municipality or Village Council</strong>
											</h6> <select class="form-control vdcmun" name="vdcMun"
											form="form">
												<option value="" selected>Select muncipality or VDC</option>
										</select>
										</td>
										<td>
											<h6>
												<strong>Grandfather Name: </strong>
											</h6> <!-- <select class="form-control wardno" name="wardNo"
											form="form">
												<option value="0" selected>Select ward no.</option>
										</select> -->
										<input type="text" class="form-control"
											name="birthcertificateissueddateen" maxlength="10"
											form="form" id="englishDate2" placeholder="grandfathername">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Grandmother Name: </strong>
											</h6> <input type="text" class="form-control" name="tole"
											form="form" placeholder="grandmothername">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Temp. Address</strong>
											</h6> <input type="text" class="form-control" name="tempaddress"
											form="form">
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content2"
							aria-labelledby="profile-tab">
							<table class="table">
								<tbody>
									<tr>
										<td><h4 style="text-decoration: underline">
												<strong>Father's Detail</strong>
											</h4></td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Register Number: </strong>
											</h6> <input type="text" class="form-control" name="register"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Register Date: </strong>
											</h6> <input type="text" class="form-control" name="date"
											form="form">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Advertisement Number: </strong>
											</h6> <input type="text" class="form-control" name="foffice"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Roll Number: </strong>
											</h6> <input type="text" class="form-control" name="fposition"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Open Competition: </strong>
											</h6> <input type="text" class="form-control" name="competition" form="form">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Division Competition: </strong>
											</h6> <input type="text" class="form-control" maxlength="10"
											name="fmobile" form="form">
										</td>
										<td>
											<h6>
												<strong>Position: </strong>
											</h6> <input type="text" class="form-control" maxlength="10"
											name="ftelephone" form="form" value="0">
										</td>
										<td>
											<h6>
												<strong>Service</strong>
											</h6> <input type="email" class="form-control" name="femail"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Group: </strong>
											</h6> <input type="text" class="form-control" name="fephone"
											maxlength="10" form="form" value="0">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Level: </strong>
											</h6> <input type="text" class="form-control"
											name="fcitizenshipno" form="form">
										</td>
										<td>
											<h6>
												<strong>Exam Center: </strong>
											</h6> <input type="text" class="form-control"
											name="fcitizenshipissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Full Name(Devanagari): </strong>
											</h6> <input type="text" class="form-control"
											name="fcitizenshipissueddate" maxlength="10" id="nepaliDate3"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Full Name(English): </strong>
											</h6> <input type="text" class="form-control"
											name="fcitizenshipissueddateen" maxlength="10" form="form"
											id="englishDate3" placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Permanent Address: </strong>
											</h6> <input type="text" class="form-control" name="flicenseno"
											form="form">
										</td>
										<td>
											<h6>
												<strong>District: </strong>
											</h6> <input type="text" class="form-control"
											name="flicenseissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Municipality: </strong>
											</h6> <input type="text" class="form-control"
											name="flicenseissueddate" maxlength="10" id="nepaliDate4"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Ward No: </strong>
											</h6> <input type="text" class="form-control"
											name="flicenseissueddateen" maxlength="10" form="form"
											id="englishDate4" placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Tol: </strong>
											</h6> <input type="text" class="form-control" name="fofficialidno"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Post(Hulak): </strong>
											</h6> <input type="text" class="form-control"
											name="fofficialidissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Telephone Number: </strong>
											</h6> <input type="text" class="form-control"
											name="fofficialidissueddate" maxlength="10" id="nepaliDate5"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Reporting Address: </strong>
											</h6> <input type="text" class="form-control"
											name="fofficialidissueddateen" maxlength="10" form="form"
											id="englishDate5" placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Father's Name: </strong>
											</h6> <input type="text" class="form-control" name="fvoteridno"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Citizenship:</strong>
											</h6> <input type="text" class="form-control"
											name="fvoteridissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Mother's Name: </strong>
											</h6> <input type="text" class="form-control"
											name="fvoteridissueddate" maxlength="10" id="nepaliDate6"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Citizenship: </strong>
											</h6> <input type="text" class="form-control"
											name="fvoteridissueddateen" maxlength="10" form="form"
											id="englishDate6" placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Grandfather's Name: </strong>
											</h6> <input type="text" class="form-control" name="fpassportno"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Citizenship</strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Wife Name: </strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissueddate" maxlength="10" id="nepaliDate7"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Citizenship: </strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissueddateen" maxlength="10" form="form"
											id="englishDate7" placeholder="1994-11-11">
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>Gender: </strong>
											</h6> <input type="text" class="form-control" name="fpassportno"
											form="form">
										</td>
										<td>
											<h6>
												<strong>Religion: </strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissuedby" form="form">
										</td>
										<td>
											<h6>
												<strong>Nationality</strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissueddate" maxlength="10" id="nepaliDate7"
											form="form" placeholder="2051-07-25">
										</td>
										<td>
											<h6>
												<strong>Personality Appearence: </strong>
											</h6> <input type="text" class="form-control"
											name="fpassportissueddateen" maxlength="10" form="form"
											id="englishDate7" placeholder="1994-11-11">
										</td>
									</tr>
								</tbody>
							</table>
							<h6>Education Certificate: </h6>
							<hr/>
							<table border="2" class="workform" >
								<tr>
									<th style="padding: 16px;">S.NO:</th>
									<th style="padding: 16px;">Educational Institution</th>
									<th style="padding: 16px;">Graduation of Education</th>
									<th style="padding: 16px;">Graduation Year of Education</th>
									<th style="padding: 16px;">Level</th>
									<th style="padding: 16px;">Marks</th>
									<th style="padding: 16px;">Main Subject</th>
								</tr>
								<tr>
									<td>1</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
								<tr>
									<td>2</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
								<tr>
									<td>3</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
								<tr>
									<td>4</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
								<tr>
									<td>5</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
							</table>
							<h6>Any Training: </h6>
							<table border="2" class="workform">
								<tr>
									<th style="padding: 16px;">S.N.</th>
									<th style="padding: 16px;">Training Company</th>
									<th style="padding: 16px;">Certificate of Training</th>
									<th style="padding: 16px;">Year of Training</th>
									<th style="padding: 16px;">Training Achievement</th>
									<th style="padding: 16px;">Training Subject</th>
								</tr>
								<tr>
									<td>1</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
								</tr>
								<tr>
									<td>2</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
								</tr>
								<tr>
									<td>3</td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
								</tr>
							</table>
							<h6>Work Experience: </h6>
							<table border="2" class="workform">
								<tr>
									<th style="padding: 16px;">Company</th>
									<th style="padding: 16px;">Position</th>
									<th style="padding: 16px;">Service</th>
									<th style="padding: 16px;">Level</th>
									<th style="padding: 16px;">Pension, Non pension, Lower Level Worker</th>
									<th style="padding: 16px;">Beginning Date</th>
									<th style="padding: 16px;">Last Date of Work</th>
									<th style="padding: 16px;">Review of Work</th>
								</tr>
								<tr>
									<td><input type="text" size=10  /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="text" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="number" size=10 /></td>
									<td><input type="text" size=10 /></td>
								</tr>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content3"
							aria-labelledby="profile-tab">
							<table class="table">
								<tr>
									<td>
										<h4 style="text-decoration: underline;">
											<strong>Admission Card</strong>
										</h4>
									</td>
								</tr>
								<tr>
									<td>
										<h6>
											<strong>Full Name: </strong>
										</h6> <input type="text" class="form-control" name="mothername"
										form="form">
									</td>
									<td>
										<h6>
											<strong>Address</strong>
										</h6> <input type="text" class="form-control" name="maddress"
										form="form">
									</td>
								</tr>
								<tr>
									<td>
										<h6>
											<strong>Advertisement Number: </strong>
										</h6> <input type="text" class="form-control" name="moffice"
										form="form">
									</td>
									<td>
										<h6>
											<strong>Office Position: </strong>
										</h6> <input type="text" class="form-control" name="mposition"
										form="form">
									</td>
									<td>
										<h6>
											<strong>Service: </strong>
										</h6> <input type="text" class="form-control" name="mincome"
										value="0" form="form">
									</td>
								</tr>
								<tr>
									<td>
										<h6>
											<strong>Group: </strong>
										</h6> <input type="text" class="form-control" maxlength="10"
										name="mmobile" form="form" value="0">
									</td>
									<td>
										<h6>
											<strong>Level: </strong>
										</h6> <input type="text" class="form-control" maxlength="10"
										name="mtelephone" form="form" value="0">
									</td>
									<td>
										<h6>
											<strong>Examination Center: </strong>
										</h6> <input type="email" class="form-control" name="memail"
										form="form">
									</td>
									<td>
										<h6>
											<strong>Signature: </strong>
										</h6> <input type="text" class="form-control" maxlength="10"
										name="mephone" form="form" value="0">
									</td>
								</tr>
							</tbody>
							</table>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>




	<script>
		
	
	</script>
</body>
</html>

