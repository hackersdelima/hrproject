<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include.jsp"></jsp:include>
<html>
<head>
<title>ADBL Signup</title>
</head>

<body class="background" style="background-color: #b3ffcc">
	<spring:url value="/applicants/register" var="formUrl" />
	<form class="login-form" action="${formUrl }" method="POST" onsubmit="return confirmation();">

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
							<strong>REGISTRATION</strong>
						</h4>

					</div>

					<div class="x_content">

						<div class="panel-body">
							<div class="panel panel-primary">
								<div class="panel-body">
								<div class="form-group col-xs-10 col-sm-12 col-md-12 col-lg-12">
								<span><a href="<spring:url value="/"/>" style="color:blue;">Already a member? Login Here!</a></span>
								</div>
									<div class="form-group col-xs-10 col-sm-12 col-md-12 col-lg-12">
										<span style="font-style: italic;">The provided email will be
											used for recovering your account information if you forgot.</span>
									</div>
									<div class="form-group col-xs-10 col-sm-12 col-md-12 col-lg-12">
										<label for="advertiseno">Advertise No *</label> <input
											name="advertiseno" class="form-control" id="advertiseno" value="${vacancy.advertiseno }" readonly />
									</div>
									<div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
										<label for="title">Title *</label> <select name="title"
											class="form-control" id="title" required>
											<option value=""></option>
											<option value="mr">Mr.</option>
											<option value="mrs">Mrs.</option>
											<option value="miss">Miss</option>
										</select>
									</div>
									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="firstname">First Name *</label> <input
											name="firstname" class="form-control" id="firstname" value="" required/>
									</div>
									<div class="form-group col-xs-10 col-sm-3 col-md-3 col-lg-3">
										<label for="middlename">Middle Name *</label> <input
											name="middlename" class="form-control" id="middlename"
											value="" required/>
									</div>
									<div class="form-group col-xs-10 col-sm-3 col-md-3 col-lg-3">
										<label for="lastname">Last Name *</label> <input
											name="lastname" class="form-control" id="lastname" value="" required/>
									</div>

									<div class="form-group col-xs-10 col-sm-4 col-md-4 col-lg-4">
										<label for="email">Email *</label> <input name="email"
											class="form-control" id="email" value="" />
									</div>

									<div class="ln_solid"></div>
									<div class="form-group">
										<div class="col-md-9 col-sm-9 col-xs-12 ">
											<input type="submit" class="btn btn-success"
												value="Submit Details">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		function confirmation() {
			return confirm('Confirm submit??');
		}
	</script>
</body>
</html>
