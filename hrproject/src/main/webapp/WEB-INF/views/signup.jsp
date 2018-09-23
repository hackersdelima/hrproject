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
	<form:form cssClass="login-form" action="${formUrl }" method="POST"
		 enctype="multipart/form-data">

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
							<strong>APPLICANT SIGNUP FORM</strong>
						</h4>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<spring:url value="/" var="loginUrl" />
								<a href="${loginUrl }" class="btn-link"><strong>Already
										a member? Login.</strong></a>
								<button class="btn btn-info" type="button" id="validate">Validate</button>
								<input type="submit" class="btn btn-success" value="Signup">
							</div>
						</div>
						<br> <br>
						<div class="clearfix"></div>
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
											placeholder="Devnagari unicode"
											value="" />
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
											placeholder="Enter Father"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Mother</label> <input
											name="mother" class="form-control" id="name"
											placeholder="Enter Mother"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Spouse</label> <input
											name="spouse" class="form-control" id="name"
											placeholder="Enter Spouse"
											value="" />
									</div>


									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Permanent Address</label> <input
											name="permanentaddress" class="form-control" id="name"
											placeholder="Enter Permanent Address"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Temporary Address</label> <input
											name="tempaddress" class="form-control" id="name"
											placeholder="Enter Temp Address"
											value="" />
									</div>
									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Citizenship No</label> <input
											name="citizenshipno" class="form-control" id="citizenship-no"
											placeholder="Enter Citizenship No"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="citizenshipIssuedDate">Citizenship Issued Date</label> <input
											name="citizenshipIssuedDate" class="form-control" id="citizenshipIssuedDate"
											placeholder="Enter Citizenship Issued Date"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="citizenshipIssuedDistrict">Citizenship Issued District</label> <select
											name="citizenshipIssuedDistrict" class="form-control" id="citizenshipIssuedDistrict">
											<option value="">Select District</option>
											</select>
									</div>


									<div class="clearfix"></div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Phone/Mob Number</label> <input
											name="phonenumber" class="form-control" id="phone-no"
											placeholder="Enter Phone Number"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Email</label> <input
											name="email" class="form-control" id="email"
											placeholder="Enter Email" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">DOB (B.S. YYYYMMDD)</label> <input
											name="dob" class="form-control" id="name"
											placeholder="Enter Date of birth"
											value="" />
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
											class="form-control" id="name" placeholder="Year"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Month</label> <input
											name="agemth" class="form-control" id="name"
											placeholder="Month" size="4" maxlength="2"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Day</label> <input
											name="ageday" class="form-control" id="name"
											placeholder="Day" size="3" maxlength="2"
											value="" />
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
											placeholder="Last Exam"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Last exam passed Date
											BS</label> <input name="passeddatebs" class="form-control" id="name"
											placeholder="Last Exam Date BS"
											value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="exampleInputEmail1">Last exam passed Date
											AD</label> <input name="passeddatead" class="form-control" id="name"
											placeholder="Last Exam Date"
											value="" />
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
												name="open_comp" value="1">
											<label for="open_comp" class="label-primary"></label>
										</div>
									</div>
									<div class="clearfix"></div>
									<h4></h4>

									<div class="jumbotron">
										<h4>
											<strong>Samabesi Tarfa</strong>
										</h4>
										<div class="container">
											<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
												<div class="material-switch pull-right">
													Mahila <input type="checkbox" id="mahila" name="mahila"
														value="1">
													<label for="mahila" class="label-primary"></label>
												</div>
											</div>
											<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
												<div class="material-switch pull-right">
													Aadibasi <input id="aadibasi" type="checkbox"
														name="adibasi" value="1">
													<label for="aadibasi" class="label-primary"></label>
												</div>
											</div>
											<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
												<div class="material-switch pull-right">
													Madhesi <input id="madhesi" type="checkbox" name="madhesi"
														value="1">
													<label for="madhesi" class="label-primary"></label>
												</div>

											</div>


											<div class="clearfix"></div>
											<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
												<div class="material-switch pull-right">
													Dalit <input type="checkbox" id="dalit" name="dalit"
														value="1">
													<label for="dalit" class="label-primary"></label>
												</div>
											</div>
											<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
												<div class="material-switch pull-right">
													Apanga <input id="apanga" type="checkbox" name="apanga"
														value="1">
													<label for="apanga" class="label-primary"></label>
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
								<div class="panel-heading clearfix">APPLICANT DOCUMENTS</div>
								<div class="panel-body">
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="imagetype">Document Type</label> <select
											name="imagetype" class="form-control" id="imagetype" >
											<option value="CTZ">Citizenship</option>
											</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="description">Description</label> <input type="text" name="description" class="form-control" id="name" placeholder="Description" value="" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="file">Image</label> <input type="file" name="file" class="form-control" id="file" />
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="imagetype">Bank Voucher</label> <select
											name="imagetype" class="form-control" id="imagetype" >
											<option value="BNKV">Bank Voucher</option>
											</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="description">Voucher Date</label> <input type="text" name="description" class="form-control" id="name" placeholder="Voucher Date" value="" required/>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="file">Image</label> <input type="file" name="file" class="form-control" id="file" required/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>

