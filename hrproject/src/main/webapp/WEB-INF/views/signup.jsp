<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>ADBL Signup कमल</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin.css"
	type="text/css">
<style>
table tr td {
	padding-bottom: 1em;
}

body {
	font-size: 14px;
	font-weight: bold;
	color:#00030a;
}



textarea:focus, input:focus {
    color: #0206ef;
}




.black_color {
font-weight: bold;
  color: #00030a;
  font-size: 14px;
}






@font-face {
	font-family: myFirstFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/preeti.TTF);
}

@font-face {
	font-family: mySecondFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/Sunil_1.ttf);
}

.nep1 {
	font-family: mySecondFont;
	color: #344c4c;
}

.nep {
	font-family: myFirstFont;
	color: #344c4c;
}

/* input, .eng, span {
	font-family: arial;
} */
input {
	border: 1px solid #94b8b8;
	padding: 3px 8px;
	font-size: 80%;
	color: #3d5c5c;
}



/* The container */
.container {
	display: block;
	position: relative;
	padding-left: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 15px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	outline: 1px solid #f00;
}

/* Create a custom checkbox */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
	background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
	display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
	left: 9px;
	top: 5px;
	width: 5px;
	height: 10px;
	border: solid white;
	border-width: 0 3px 3px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}
</style>

</head>

<body style="background-color: mediumaquamarine;">
	<div class="col-md-8 col-centered"
		style="text-align: center; padding-bottom: 10px;">
		<img
			src="${pageContext.request.contextPath}/resources/images/adbl-logo.png"
			alt="logo" class="img-responsive" />

		<h4>SIGNUP FORM</h4>
		<hr>
		<spring:url value="/signup_review" var="formUrl" />
		<form:form cssClass="login-form" action="${formUrl }" method="POST"
			modelAttribute="user">
			<table style="width: 80%; margin: auto;">

				<tr>
					<td><a href="<spring:url value="/"/>" style="font-size: 80%">Already
							a member? Login</a></td>
					<td><input type="submit" class="form-control pull-right"
						value="Next"></td>
				</tr>

			</table>

			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#1">Menu 1</a></li>
				<li><a data-toggle="tab" href="#2">Menu 2</a></li>
			</ul>
			<div class="tab-content">
				<div id="1" class="tab-pane fade in active">
					<br>
					<table style="width: 100%; margin: auto;">
						<tr>

							<td colspan="2">
								<div class="input-group">
									<span class="input-group-addon">Advertise No</span>
									<form:select path="advertiseno" cssClass="form-control" id="advertiseno">
										<option value="${sessionScope.user.advertiseno }" selected>${sessionScope.user.advertiseno }</option>
										<c:forEach items="${ad_nos }" var="a">
											<option value="${a.advertiseno }">${a.advertiseno }</option>
										</c:forEach>
									</form:select>
								</div>
							</td>

						</tr>
						<tr>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Name (Nepali) </span>
									<form:input path="name" cssClass=" uname" id="name"
										placeholder="Devnagari unicode"
										value="${sessionScope.user.name }" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="input-group">
									<span class="input-group-addon">Name (English) </span>
									<form:input path="name1" cssClass="uname" id="name"
										placeholder="Enter Name" value="${sessionScope.user.name1 }" />
								</div>
							</td>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Father</span>
									<form:input path="father" cssClass="uname" id="name"
										placeholder="Enter Father" value="${sessionScope.user.father }" />
								</div>
							</td>



						</tr>
						<tr>
							<td colspan="2">
								<div class="input-group">
									<span class="input-group-addon">Mother</span>
									<form:input path="mother" cssClass="uname" id="name"
										placeholder="Enter Mother" value="${sessionScope.user.mother }" />
								</div>
							</td>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Spouse</span>
									<form:input path="spouse" cssClass="uname" id="name"
										placeholder="Enter Spouse" value="${sessionScope.user.spouse }" />
								</div>
							</td>

						</tr>

						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Permanent Address</span>
									<form:input path="permanentaddress" cssClass="uname" id="name"
										placeholder="Enter Permanent Address" value="${sessionScope.user.permanentaddress }" />
								</div></td>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Temporary Address</span>
									<form:input path="tempaddress" cssClass="uname" id="name"
										placeholder="Enter Temp Address" value="${sessionScope.user.tempaddress }" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Citizenship No</span>
									<form:input path="citizenshipno" cssClass="uname"
										id="citizenship-no" placeholder="Enter Citizenship No"
										value="${sessionScope.user.citizenshipno }" />
								</div></td>
							<td><div class="input-group">
									<span class="input-group-addon">Phone/Mob Number</span>
									<form:input path="phonenumber" cssClass="uname" id="phone-no"
										placeholder="Enter Phone Number"
										value="${sessionScope.user.phonenumber }" />
								</div></td>
						</tr>
						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Email</span>
									<form:input path="email" cssClass="uname" id="email"
										placeholder="Enter Email" value="${sessionScope.user.email }" />
								</div></td>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">DOB (B.S. YYYYMMDD)</span>
									<form:input path="dob" cssClass="uname" id="name"
										placeholder="Enter Date of birth"
										value="${sessionScope.user.dob }" />
								</div></td>
						</tr>
						</table>
<table style="width:100%; margin:auto;">
    			<caption>AGE DETAIL</caption>
						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Year</span>
									<form:input path="ageyr" size="4" maxlength="2" minlength="2" 
										cssClass="uname" id="name" placeholder="Year"
										value="${sessionScope.user.ageyr }" />
								</div></td>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Month</span>
									<form:input path="agemth" cssClass="uname" id="name"
										placeholder="Month" size="4" maxlength="2" 
										value="${sessionScope.user.agemth }" />
								</div>
							</td>
							<td>
								<div class="input-group">
									<span class="input-group-addon">Day</span>
									<form:input path="ageday" cssClass="uname" id="name"
										placeholder="Day" size="3" maxlength="2" 
										value="${sessionScope.user.ageday }" />
								</div>
							</td>
						</tr>
						</table>
<table style=" width:100%;margin:auto;">
    			<caption>EXAM DETAIL</caption>
						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Last Exam Passed</span>
									<form:input path="lastpassedexam" cssClass="uname" id="name"
										placeholder="Last Exam" value="${sessionScope.user.lastpassedexam }" />
								</div></td>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Last exam passed Date BS</span>
									<form:input path="passeddatebs" cssClass="uname" id="name"
										placeholder="Last Exam Date BS"
										value="${sessionScope.user.passeddatebs }" />
								</div></td>
						</tr>

						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Last exam passed Date AD</span>
									<form:input path="passeddatead" cssClass="uname" id="name"
										placeholder="Last Exam Date"
										value="${sessionScope.user.passeddatead }" />
								</div></td>
						</tr>
						<tr>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Username</span>
									<form:input path="username" cssClass="uname" id="name"
										placeholder="Enter Username"
										value="${sessionScope.user.username }" />
								</div></td>
							<td colspan="2"><div class="input-group">
									<span class="input-group-addon">Password</span>
									<form:input path="password" cssClass="uname" id="password"
										placeholder="Enter Password"
										value="${sessionScope.user.password }" />
								</div></td>
						</tr>



					</table>
				</div>
				<div id="2" class="tab-pane fade">
					<table style="width: 80%; margin: auto;">
						<caption>Compitition Type</caption>
						<tr>
						
							<td><label class="container">Open Compitition Tarfa <input
									type="checkbox" name="open_comp" value="1" <c:if test="${sessionScope.user.open_comp eq 1}">checked</c:if>> <span
									class="checkmark"></span>
							</label></td>

						</tr>
						<tr>
							<td><label class="container">Samabesi Tarfa 
							</label></td>

						</tr>

						<tr>
							<td colspan="2"><label class="container">Mahila <input
									type="checkbox" name="mahila" value="1" <c:if test="${sessionScope.user.mahila eq 1}">checked</c:if>> <span
									class="checkmark"></span>
							</label> </td>
						</tr>
						<tr>
							<td colspan="2"><label class="container">Aadibasi <input
									type="checkbox" name="adibasi" value="1" <c:if test="${sessionScope.user.adibasi eq 1}">checked</c:if>> <span
									class="checkmark"> </span></label></td>
						</tr>
						<tr>
							<td colspan="2"><label class="container">Madhesi <input
									type="checkbox" name="madhesi" value="1" <c:if test="${sessionScope.user.madhesi eq 1}">checked</c:if>> <span
									class="checkmark"> </span></label></td>
						</tr>
						
						<tr>
							<td colspan="2"><label class="container">Dalit <input
									type="checkbox" name="dalit" value="1" <c:if test="${sessionScope.user.dalit eq 1}">checked</c:if>> <span
									class="checkmark"> </span></label></td>
						</tr>
						<tr>
							<td colspan="2"><label class="container">Apanga <input
									type="checkbox" name="apanga" value="1" <c:if test="${sessionScope.user.apanga eq 1}">checked</c:if> > <span
									class="checkmark"> </span></label></td>
						</tr>
						<tr>
							<td colspan="2"><label class="container"> Pichadiyeko Chetra <input
									type="checkbox" name="pichadiyeko_chetra" value="1" <c:if test="${sessionScope.user.pichadiyeko_chetra eq 1}">checked</c:if>> <span
									class="checkmark"> </span></label></td>
						</tr>
					</table>
				</div>
			</div>
			<hr>


		</form:form>

	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

