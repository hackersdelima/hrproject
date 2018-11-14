<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include.jsp"></jsp:include>
<html>
<head>
<title>ADBL Application</title>
<style>
@font-face {
	font-family: 'preeti';
	/* src: url('fonts/preeti.TTF') format('truetype'); */
	src: url('preeti.TTF', 'truetype');
}

.nep {
	font-family: preeti;
	font-size: 20px;
	/* font-weight: normal;
	font-style: normal; */
}
</style>
</head>

<body class="background">
	<spring:url value="/applicants/update" var="formUrl" />
	<form class="login-form" action="${formUrl }" method="GET"
		enctype="multipart/form-data" onsubmit="return confirmation();">

		<div class="col-md-12 col-sm-12 col-xs-12  ">
			<div class="col-md-12 col-xs-12"
				style="box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);">
				<div class="x_panel">
					<div class="x_title">

						<img
							src="${pageContext.request.contextPath}/resources/images/adbl-logo.png"
							alt="logo" class="img-responsive"
							style="width: 100%; box-shadow: 5px 6px #888888;" /> <br>
						<h4>
							<strong>APPLICANT FORM</strong>
						</h4>

						<div class="clearfix"></div>
					</div>

					<div class="x_content">

						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix nep">g]kfnLdf ljj/0f</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Name(Nepali)</label> <input
											name="name" class="form-control nep" id="name"
											placeholder="gfd g]kfnLdf" value="" />
									</div>

									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="fathernep">Father's Name(Nepali)</label>
										<input name="fathernep" class="form-control nep" id="fathernamenep"
											placeholder="afa'sf] gfd g]kfnLdf" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="grandfathernep">Grandfather's
											Name(Nepali)</label> <input name="grandfathernep"
											class="form-control nep" id="grandfathernep"
											placeholder="afh]sf] gfd g]kfnLdf" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="permanentaddressnep">Permanent
											Address(Nepali)</label> <input name="permanentaddressnep"
											class="form-control nep" id="permanentaddressnep"
											placeholder=":yfoL 7]ufgf g]kfnLdf" value="" />
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">APPLICANT DETAILS</div>
							<div class="panel-body"></div>

							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="firstname">First Name *</label> <input
									name="firstname" class="form-control " id="firstname"
									placeholder="First Name" value="" />
							</div>

							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="middlename">Middle Name</label> <input
									name="middlename" class="form-control " id="middlename"
									placeholder="Middle Name" value="" />
							</div>

							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="lastname">Last Name*</label> <input
									name="lastname" class="form-control " id="lastname"
									placeholder="Last Name" value="" />
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="father">Father'Name</label> <input
									name="father" class="form-control" id="father"
									placeholder="Enter Father" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="mother">Mother's Name</label> <input
									name="mother" class="form-control" id="mother"
									placeholder="Enter Mother" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="spouse">Spouse Name</label> <input
									name="spouse" class="form-control" id="spouse"
									placeholder="Enter Spouse" value="" />
							</div>


							<div class="clearfix"></div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="grandfather">Grand Father Name</label> <input
									name="grandfather" class="form-control" id="grandfather"
									placeholder="Enter Grand Father Name" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="permanentaddress">Permanent Address</label> <input
									name="permanentaddress" class="form-control" id="permanentaddress"
									placeholder="Enter Permanent Address" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="tempaddress">Temporary Address</label> <input
									name="tempaddress" class="form-control" id="tempaddress"
									placeholder="Enter Temp Address" value="" />
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="citizenshipno">Citizenship No</label> <input
									name="citizenshipno" class="form-control" id="citizenshipno"
									placeholder="Enter Citizenship No" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="citizenshipIssuedDate">Citizenship Issued
									Date</label> <input name="citizenshipIssuedDate" class="form-control"
									id="citizenshipIssuedDate"
									placeholder="Enter Citizenship Issued Date" value="" />
							</div>
							<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
								<label for="citizenshipIssuedDistrict">Citizenship
									Issued District</label> <select name="citizenshipIssuedDistrict"
									class="form-control" id="citizenshipIssuedDistrict">
									<option value="">Select District</option>
									<c:forEach items="${districts }" var="d">
										<option value="${d.districtcode }">${d.districtname }</option>
									</c:forEach>
								</select>
							</div>

							<div class="clearfix">

								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="phone-no">Phone/Mob Number</label> <input
										name="phonenumber" class="form-control" id="phone-no"
										placeholder="Enter Phone Number" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="email">Email</label> <input
										name="email" class="form-control" id="email"
										placeholder="Enter Email" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="dob">DOB (B.S. YYYYMMDD)</label> <input
										name="dob" class="form-control" id="dob"
										placeholder="Enter Date of birth" value="" />
								</div>
							</div>
						</div>
					</div>


					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">AGE DETAIL</div>
							<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="ageyr">Year</label> <input
										name="ageyr" size="4" maxlength="2" minlength="2"
										class="form-control" id="ageyr" placeholder="Year" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="agemth">Month</label> <input
										name="agemth" class="form-control" id="agemth"
										placeholder="Month" size="4" maxlength="2" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="ageday">Day</label> <input
										name="ageday" class="form-control" id="ageday" placeholder="Day"
										size="3" maxlength="2" value="" />
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">New Permanent Address</div>
							<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="perdistrict">District</label> <select
										class="form-control" name="perdistrict">
										<option value="">Select District</option>
										<c:forEach items="${districts }" var="d">
											<option value="${d.districtcode }">${d.districtname }</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="pervdcmun">VDC/Municipality</label> <select
										class="form-control" name="pervdcmun" id="pervdcmun">
										<option value="">Select VDC/Municipality</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="perwardno">Ward No</label> <select
										class="form-control" name="perwardno" id="perwardno">
										<option value="">Select Ward No</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="pertole">Tole/City</label> <input type="text"
										class="form-control" name="pertole" id="pertole">
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">EXAM DETAIL</div>
							<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="lastpassedexam">Last Exam Passed</label> <input
										name="lastpassedexam" class="form-control" id="lastpassedexam"
										placeholder="Last Exam" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="passeddatebs">Last exam passed Date
										BS</label> <input name="passeddatebs" class="form-control" id="passeddatebs"
										placeholder="Last Exam Date BS" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="passeddatead">Last exam passed Date
										AD</label> <input name="passeddatead" class="form-control" id="passeddatead"
										placeholder="Last Exam Date" value="" />
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">COMPITITION TYPE</div>
							<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<div class="material-switch pull-right">
										Open Compitition <input type="checkbox" id="open_comp"
											name="open_comp" value="1"> <label for="open_comp"
											class="label-primary"></label>
									</div>
								</div>
								<div class="clearfix"></div>
								<h4></h4>

								<div class="jumbotron">
									<h4>
										<strong>Samabesi</strong>
									</h4>
									<div class="container">
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Mahila <input type="checkbox" id="mahila" name="mahila"
													value="1"> <label for="mahila"
													class="label-primary"></label>
											</div>
										</div>
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Aadibasi <input id="aadibasi" type="checkbox" name="adibasi"
													value="1"> <label for="aadibasi"
													class="label-primary"></label>
											</div>
										</div>
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Madhesi <input id="madhesi" type="checkbox" name="madhesi"
													value="1"> <label for="madhesi"
													class="label-primary"></label>
											</div>

										</div>


										<div class="clearfix"></div>
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Dalit <input type="checkbox" id="dalit" name="dalit"
													value="1"> <label for="dalit" class="label-primary"></label>
											</div>
										</div>
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Apanga <input id="apanga" type="checkbox" name="apanga"
													value="1"> <label for="apanga"
													class="label-primary"></label>
											</div>
										</div>
										<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
											<div class="material-switch pull-right">
												Pichadiyeko Chetra <input id="pichadiyekochetra"
													type="checkbox" name="pichadiyeko_chetra" value="1">
												<label for="pichadiyekochetra" class="label-primary"></label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">EDUCATION DETAIL</div>
							<div class="panel-body" style="overflow: auto;">
								<table class="table">
									<thead>
										<tr>
											<th>S.No</th>
											<th>Degree</th>
											<th>Institute, Country</th>
											<th>Completion year</th>
											<th>Grade/Percentage</th>
											<th>Faculty</th>
											<th>Document (.jpg, .png, .jpeg)</th>
										</tr>
									</thead>
									<tbody>


										<tr>
											<td>1</td>
											<td><input type="text" size=auto name="exam_name"
												value="Masters" readonly /></td>
											<td><input type="text" size=auto name="institute_name" /></td>
											<td><input type="text" size=auto name="completion_year" /></td>

											<td><input type="text" size=auto
												name="totalmarks_percentage" /></td>
											<td><input type="text" size=auto name="major_sub" /></td>
											<td><input type="file" class="document"
												name="educationDocument[]"
												id="education_#index#_educationDocument" value=""
												="" /></td>
										</tr>
										<tr>
											<td>2</td>
											<td><input type="text" size=auto name="exam_name"
												value="Bachelors" readonly /></td>
											<td><input type="text" size=auto name="institute_name" /></td>
											<td><input type="text" size=auto name="completion_year" /></td>

											<td><input type="text" size=auto
												name="totalmarks_percentage" /></td>
											<td><input type="text" size=auto name="major_sub" /></td>
											<td><input type="file" class="document"
												name="educationDocument[]"
												id="education_#index#_educationDocument" value=""
												="" /></td>
										</tr>
										<tr>
											<td>3</td>
											<td><input type="text" size=auto name="exam_name"
												value="10+2/ Intermediate" readonly /></td>
											<td><input type="text" size=auto name="institute_name" /></td>
											<td><input type="text" size=auto name="completion_year" /></td>

											<td><input type="text" size=auto
												name="totalmarks_percentage" /></td>
											<td><input type="text" size=auto name="major_sub" /></td>
											<td><input type="file" class="document"
												name="educationDocument[]"
												id="education_#index#_educationDocument" value=""
												="" /></td>
										</tr>
										<tr>
											<td>4</td>
											<td><input type="text" size=auto name="exam_name"
												value="SLC/Other Board" readonly /></td>
											<td><input type="text" size=auto name="institute_name" /></td>
											<td><input type="text" size=auto name="completion_year" /></td>

											<td><input type="text" size=auto
												name="totalmarks_percentage" /></td>
											<td><input type="text" size=auto name="major_sub" /></td>
											<td><input type="file" class="document"
												name="educationDocument[]"
												id="education_#index#_educationDocument" value=""
												="" /></td>
										</tr>


									</tbody>
								</table>

							</div>
						</div>
					</div>

					<div class="panel-body">
						<div class="panel panel-primary">
							<div class="panel-heading clearfix">APPLICANT DOCUMENTS</div>
							<div class="panel-body">
								<div class="clearfix"></div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="imagetype">Bank Voucher</label> <select
										name="imagetype" class="form-control" id="imagetype">
										<option value="BNKV">Bank Voucher</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="description">Voucher Date</label> <input
										type="text" name="description" class="form-control" id="name"
										placeholder="Voucher Date" value=""  />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="file">Image</label> <input type="file" name="file"
										class="form-control" id="file"  />
								</div>

								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="imagetype">Citizenship</label> <select
										name="imagetype" class="form-control" id="imagetype">
										<option value="CTZ">Citizenship</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="description">Description</label> <input type="text"
										name="description" class="form-control" id="name"
										placeholder="Description" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="file">Image</label> <input type="file" name="file"
										class="form-control" id="file" />
								</div>

								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="imagetype">Character Certificate</label> <select
										name="imagetype" class="form-control" id="imagetype">
										<option value="CHC">Character Certificate</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="description">Description</label> <input type="text"
										name="description" class="form-control" id="name"
										placeholder="Description" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="file">Image</label> <input type="file" name="file"
										class="form-control" id="file" />
								</div>

								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="imagetype">Signature</label> <select
										name="imagetype" class="form-control" id="imagetype">
										<option value="CHC">Signature</option>
									</select>
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="description">Description</label> <input type="text"
										name="description" class="form-control" id="name"
										placeholder="Description" value="" />
								</div>
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
									<label for="file">Image</label> <input type="file" name="file"
										class="form-control" id="file" />
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="table-responsive">
					<table width="100%" cellpadding="0" cellspacing="1"
						class="table table-bordered">
						<tr>
							<td>


								<h2 style="margin-top: 10px;">
									<u>Term & Conditions:</u>
								</h2> <span> I certify that the information I have provided
									hereinabove is true, complete and correct. I understand that
									any misrepresentation or material omission made in this
									document may lead to cancellation of my candidature at any
									stage and even to termination of my appointment/dismissal from
									the Bank's service if it is discovered that the data furnished
									by me is false. I further declare that if selected for
									appointment in the Bank, I am willing to work at Bank's, any
									branches outside Kathmandu valley as per the requirement of the
									Bank. Bank reserves the right to reject any or all the
									applications without assigning any reason whatsoever. </span> <br />
								<br /> <input type="checkbox" 
								name="termsandcondition" style="width: auto"  /> <label
								style="width: 95%"><span >*</span> I
									confirm the information provided above are correct and my own.
									I also, hereby, agree to the above Term & Conditions . </label>

							</td>
						</tr>
					</table>
				</div>
				<div class="form-group">
					<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
						<spring:url value="/" var="loginUrl" />
						<input type="submit" class="btn btn-success" value="Submit">
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>




	</form>

	<script type="text/javascript">
		function confirmation() {
			return confirm('Do you really want to submit the form?');
		}
	</script>
</body>
</html>

