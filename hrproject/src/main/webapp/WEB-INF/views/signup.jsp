<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="include.jsp"></jsp:include>
<html>
<head>
<title>ADBL Signup</title>
</head>

<body class="background" style="background-color: #b3ffcc">
	<spring:url value="/signup" var="formUrl" />
	<form class="login-form" action="${formUrl }" method="POST"
		enctype="multipart/form-data" onsubmit="return confirmation();">

		<div class="col-md-8 col-sm-8 col-xs-8  col-sm-offset-2">
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
						
					</div>

					<div class="x_content">

						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix">APPLICANT DETAILS</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Advertise No</label> <select
											name="advertiseno" class="form-control" id="advertiseno">
											<option value="">Select Adv. No</option>
											<c:forEach items="${ad_nos }" var="a">
												<option value="${a.advertiseno }">${a.advertiseno }</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Name(Nepali)</label> <input
											name="name" class="form-control" id="name"
											placeholder="Devnagari unicode" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Name(English)</label> <input
											name="name1" class="form-control " id="name"
											placeholder="Enter Name" value="" />
									</div>
									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Father</label> <input
											name="father" class="form-control" id="name"
											placeholder="Enter Father" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Mother</label> <input
											name="mother" class="form-control" id="name"
											placeholder="Enter Mother" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Spouse</label> <input
											name="spouse" class="form-control" id="name"
											placeholder="Enter Spouse" value="" />
									</div>


									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Grand Father Name</label> <input
											name="grandfather" class="form-control" id="grandfather"
											placeholder="Enter Grand Father Name" value="" />
									</div>
									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Citizenship No</label> <input
											name="citizenshipno" class="form-control" id="citizenship-no"
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


									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Phone/Mob Number</label> <input
											name="phonenumber" class="form-control" id="phone-no"
											placeholder="Enter Phone Number" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Email</label> <input
											name="email" class="form-control" id="email"
											placeholder="Enter Email" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">DOB (B.S. YYYYMMDD)</label> <input
											name="dob" class="form-control" id="name"
											placeholder="Enter Date of birth" value="" />
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix">Address</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Permanent Address(Citizenship)</label> <input
											name="permanentaddress" class="form-control" id="name"
											placeholder="Enter Permanent Address" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="perdistrict">District</label> <select
											class="form-control perdistrict" name="perdistrict">
											<option value="">Select District</option>
											<c:forEach items="${districts }" var="d">
												<option value="${d.districtcode }">${d.districtname }</option>
											</c:forEach>
										</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">VDC/Municipality</label> <select
											class="form-control" name="vdcmun">
											<option value="">Select VDC/Municipality</option>
										</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Ward No</label> <select
											class="form-control" name="perwardno">
											<option value="">Select Ward No</option>
										</select>
									</div>

									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="tole">Tole</label> <input name="tole"
											class="form-control" id="tole" placeholder="Enter Tole"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Temporary Address</label> <input
											name="tempaddress" class="form-control" id="name"
											placeholder="Enter Temp Address" value="" />
									</div>
								</div>
							</div>
						</div>

						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix">AGE DETAIL</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Year</label> <input
											name="ageyr" size="4" maxlength="2" minlength="2"
											class="form-control" id="name" placeholder="Year" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Month</label> <input
											name="agemth" class="form-control" id="name"
											placeholder="Month" size="4" maxlength="2" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Day</label> <input
											name="ageday" class="form-control" id="name"
											placeholder="Day" size="3" maxlength="2" value="" />
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
													Aadibasi <input id="aadibasi" type="checkbox"
														name="adibasi" value="1"> <label for="aadibasi"
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
														value="1"> <label for="dalit"
														class="label-primary"></label>
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
								<div class="panel-heading clearfix">EXAM DETAIL</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Last Exam Passed</label> <input
											name="lastpassedexam" class="form-control" id="name"
											placeholder="Last Exam" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Last exam passed Date
											BS</label> <input name="passeddatebs" class="form-control" id="name"
											placeholder="Last Exam Date BS" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Last exam passed Date
											AD</label> <input name="passeddatead" class="form-control" id="name"
											placeholder="Last Exam Date" value="" />
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
													required="required" /></td>
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
													required="required" /></td>
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
													required="required" /></td>
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
													required="required" /></td>
											</tr>


										</tbody>
									</table>

								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix">Bank Voucher Details</div>
								<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="vouchernumber">Voucher Number</label> <input
											type="text" name="vouchernumber" class="form-control" id="vouchernumber"
											placeholder="Voucher Number" value="" required />
									</div>
									
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="voucherdate">Voucher Date</label> <input
											type="text" name="voucherdate" class="form-control" id="voucherdate"
											placeholder="Voucher Date" value="" required />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="voucheramount">Amount</label> <input
											type="text" name="voucheramount" class="form-control" id="voucheramount"
											placeholder="Voucher Amount" value="" required />
									</div>
								
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-heading clearfix">APPLICANT DOCUMENTS</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="imagetype">Bank Voucher</label> <select
											name="imagetype" class="form-control" id="imagetype">
											<option value="BNKV">Bank Voucher</option>
										</select>
									</div>
							
									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="file">Image</label> <input type="file" name="file"
											class="form-control" id="file" required />
									</div>
								

									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="imagetype">Citizenship</label> <select
											name="imagetype" class="form-control" id="imagetype">
											<option value="CTZ">Citizenship</option>
										</select>
									</div>
								
									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="file">Image</label> <input type="file" name="file"
											class="form-control" id="file" />
									</div>
									
									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="imagetype">Character Certificate</label> <select
											name="imagetype" class="form-control" id="imagetype">
											<option value="CHC">Character Certificate</option>
										</select>
									</div>
									
									<div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
										<label for="file">Image</label> <input type="file" name="file"
											class="form-control" id="file" />
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
											stage and even to termination of my appointment/dismissal
											from the Bank's service if it is discovered that the data
											furnished by me is false. I further declare that if selected
											for appointment in the Bank, I am willing to work at Bank's,
											any branches outside Kathmandu valley as per the requirement
											of the Bank. Bank reserves the right to reject any or all the
											applications without assigning any reason whatsoever. </span> <br />
										<br /> <input type="checkbox" class="required"
										name="termsandcondition" style="width: auto" required /> <label
										style="width: 95%"><span class="required">*</span> I
											confirm the information provided above are correct and my
											own. I also, hereby, agree to the above Term & Conditions . </label>

									</td>
								</tr>
							</table>
						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<%-- <spring:url value="/" var="loginUrl" />
								<a href="${loginUrl }" class="btn-link"><strong>Already
										a member? Login.</strong></a> --%>
								<!-- <button class="btn btn-info" type="button" id="validate">Validate</button> -->
								<input type="submit" class="btn btn-success" value="Submit Details">
							</div>
						</div>
						<br> <br>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

	</form>


	<script type="text/javascript">
		function confirmation() {
			return confirm('Do you really want to submit the form?');
		}
	
		
		$('select.perdistrict').change(function(){

		    alert('Select field value has changed to' + $('select.perdistrict').val());

		   // You can perform an ajax request using the .ajax() method
		   $.ajax({
		       type: 'GET',
		      url: 'changeStatus.php', // This is the url that will be requested

		      // This is an object of values that will be passed as GET variables and 
		      // available inside changeStatus.php as $_GET['selectFieldValue'] etc...
		      data: {selectFieldValue: $('select.changeStatus').val()},

		      // This is what to do once a successful request has been completed - if 
		      // you want to do nothing then simply don't include it. But I suggest you 
		      // add something so that your use knows the db has been updated
		      success: function(html){
		    	  alert('data change successful');
		      },
		      dataType: 'html'
		    });

		});
	</script>
</body>
</html>

