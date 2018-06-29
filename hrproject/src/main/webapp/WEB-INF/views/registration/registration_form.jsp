<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<jsp:include page="../include.jsp"></jsp:include>
<spring:url value="/reg/next" var="formUrl"></spring:url>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@font-face {
	font-family: myFirstFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/preeti.TTF);
}
@font-face {
	font-family: mySecondFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/Sunil_1.ttf);
}
.nep1{
font-family: mySecondFont;
	color: #344c4c;
}
body, .nep {
	font-family: myFirstFont;
	color: #344c4c;
}

input, .eng, span {
	font-family: arial;
}
input{
border: 1px solid #94b8b8;
  padding:3px 8px;
  font-size:80%;
  color:#3d5c5c;}
body {
	font-size: 180%;
	
}
</style>
</head>
<body class="background container">


	<form method="post" action="${formUrl }">
		<div class="form-group eng">
			<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
				<a href="<spring:url value="/reg/cancel"/>"class="btn btn-danger" type="button">Cancel</a>
				<button class="btn btn-primary" type="reset">Reset</button>
				<input type="submit" class="btn btn-success" value="Next">
			</div>
		</div>
		<div  class="col-md-12" style="margin-top:30px;">
		<div class="col-md-12">
			<div class="col-md-4">
				<table class="table" style="width:70%;">
					<caption>
						<strong>sfof{no k|of]hgsf] nflu</strong>
					</caption>
					<tbody>
						<tr>
							<td colspan="4">b/vf:t btf{ g+=</td>
							<td><input  type="text" name="reg_no" value="${sessionScope.registration.reg_no}" id="reg_no"></td>
						</tr>
						<tr>
							<td colspan="4">ldlt</td>
							<td><input type="text" name="reg_date" value="${sessionScope.registration.reg_date }"
								id="reg_date"></td>
						</tr>
						<tr>
							<td colspan="5">s[lif ljsf; a}+s ln=</td>
						</tr>
						<tr>
							<td colspan="5">d'Vo sfof{no, sf7df8f} .</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-2">
				<img src="${pageContext.request.contextPath}/resources/images/logo.png">
			</div>
			<div class="col-md-6">
				<div class="pull-right" style="width:30%;height:150px;border:1px solid black">
					kf;kf]6{     ;fOhsf] k"/f   d'vfs[lt   k'/} b]lvg]   t:jL/   oxf+ 6f+:g]  /  t:jL/  /  kmf/fddf   kg]{   u/L   pDd]bjf/n]      ;xL      ug]{ .  
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<strong>ljifo M </strong>${sessionScope.vacancy.postnp }
				=kbsf] b/vf:t ;DjGwdf .
			</div>

		</div>
		<div class="col-md-12">
			dxfzo,<br> To; s[lif ljsf; a}+s ln=sf] ldlt  <span class="nep1">${sessionScope.vacancy.date }</span>
				 ut] k|sflzt lj1fkg cg';f/ lj1fkg g+
			<span class="nep1"><strong> ${sessionScope.userDetail.ad_no }</strong></span> kb <strong>${sessionScope.vacancy.postnp }</strong> sf] nflu b]xfosf] ljj/0f
			pNn]v u/L /Ltk"j{s b/vf:t k]z u/]sf] 5' .
		</div>
		<div class="col-md-12">
			<strong>-!_ k|ltof]lutfsf] lsl;d</strong>
		</div>
		<div class="col-md-12">
			<div class="col-md-6">
				s_ v'NNff k|ltof]lutftkm{ <input value="${sessionScope.registration.khulla_pratiyogita }" type="text"
					name="khulla_pratiyogita" value="">
			</div>
			<div class="col-md-6">
				<table class="table">
					<tbody>
						<tr>
							<td colspan="1">v_ ;dfj]zLtkm{</td>
							<td><input value="${sessionScope.registration.samabesi }" type="text" name="samabesi" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-!_ dlxnf</td>
							<td><input value="${sessionScope.registration.woman }" type="text" name="woman" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-@_ cflbjf;L hghflt</td>
							<td><input value="${sessionScope.registration.aadibasi_janjati }" type="text" name="aadibasi_janjati" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-#_ dw];L</td>
							<td><input value="${sessionScope.registration.madhesi }" type="text" name="madhesi" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-$_ blnt</td>
							<td><input value="${sessionScope.registration.dalit }" type="text" name="dalit" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-%_ ckf+u</td>
							<td><input value="${sessionScope.registration.apanga }" type="text" name="apanga" value=""></td>
						</tr>
						<tr>
							<td colspan="1">-^_ lk5l8Psf] If]q</td>
							<td><input value="${sessionScope.registration.pichadiyeko_chhetra }" type="text" name="pichadiyeko_chhetra" value=""></td>
						</tr>
					</tbody>

				</table>
			</div>

		</div>
		<div class="col-md-12">-gf]6 pDd]bjf/n] h'g h'g ;d"x cGt/utsf]
			k/LIffdf ;lDdlnt x'g rfx]sf] xf] ;f]xL cg';f/sf] ;d"x sf]i7 leq
			cIf/df :ki6 pNn]v ug'{kg]{5 _</div>
		<div class="col-md-12">
		
		pQL0f{ u/]sf] clGtd k/LIffsf] gfd 
			<span><strong> ${sessionScope.userDetail.lastpassedexam }</strong></span> 
<%-- 			 pQL0f{ u/]sf] clGtd k/LIffsf] gfd <input value="${sessionScope.userDetail.lastpassedexam }" type="text" name="last_exam">  --%>
			ljifox? <input value="${sessionScope.registration.last_exam_subjects }" type="text" name="last_exam_subjects">
		</div>
		<div class="col-md-12">
			<table class="table">
				<caption>
					<strong>z}lIfs of]Uotf</strong>
				</caption>
				<tbody>
					<tr>
						<td>plQ0f{ u/]sf] ;fn <input value="${sessionScope.userDetail.passeddatebs }" type="text" disabled name="degree_year"
							size="8"> <%-- dlxgf <input value="${sessionScope.userDetail.agemth }" type="text" name="degree_month"
							size="2"> ut] <input value="${sessionScope.userDetail.ageday }" type="text" name="degree_day"
							size="2"> --%>&nbsp;&nbsp;&nbsp;&nbsp; ;g \ <input value="${sessionScope.userDetail.passeddatead }" type="text"
							name="degree_yearen" size="8" disabled> <%-- dlxgf  <input value="${sessionScope.registration.degree_monthen }" type="text"
							name="degree_monthen" size="2"> tfl/v <input value="${sessionScope.registration.degree_dayen }" type="text"
							name="degree_dayen" size="2"> --%>
						</td>
					</tr>
					<tr>
						<td>@_ hGd ldlt <input value="${sessionScope.userDetail.dob }" type="text" name="birth_date"
							size="10" placeholder="2051-11-11">
							&nbsp;&nbsp;&nbsp;&nbsp; xfnsf] pd]/ &nbsp;&nbsp;&nbsp; aif{ <input value="${sessionScope.userDetail.ageyr }"
							type="text" name="cur_age_yr" size="3"> dlxgf <input value="${sessionScope.userDetail.agemth }"
							type="text" name="cur_age_month" size="2"> lbg <input value="${sessionScope.userDetail.ageday }"
							type="text" name="cur_age_days" size="2"></td>
					</tr>

					<tr>
						<td>#_ gful/stf <input value="${sessionScope.registration.citizenship }" type="text" name="citizenship" size=""></td>
					</tr>
					<tr>
						<td>$_ c~rn <input value="${sessionScope.registration.cit_zone }" type="text" name="cit_zone" size="9">
							hNNff <input value="${sessionScope.registration.cit_district }" type="text" name="cit_district" size="12">
							dgkf <span class="eng">/</span>pkdgkf<span class="eng">/</span>
							g=kf=<span class="eng">/</span> uf=lj=;= <input value="${sessionScope.registration.cit_vdcmun }" type="text"
							name="cit_vdcmun">
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table" style="width:30%">
				<tbody>

					<tr>
						<td colspan="1">%_ :yfoL 7]ufgf</td>
						<td><input value="${sessionScope.registration.permanent_address }" type="text" name="permanent_address" size="20"></td>
					</tr>
					<tr>
						<td colspan="1">^_ c:yfoL 7]ufgf</td>
						<td><input value="${sessionScope.registration.temp_address }" type="text" name="temp_address" size=""></td>
					</tr>
					<tr>
						<td colspan="1">&_ Affa'sf] gfd</td>
						<td><input value="${sessionScope.userDetail.father }" type="text" name="father_name" size=""></td>
					</tr>
					<tr>
						<td colspan="1">*_ afh]sf] gfd</td>
						<td><input value="${sessionScope.registration.grandfather_name }" type="text" name="grandfather_name" size=""></td>
					</tr>
					<tr>
						<td colspan="1">(_ cfdfsf] gfd</td>
						<td><input value="${sessionScope.userDetail.mother }" type="text" name="mother_name" size=""></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-12">
			<div class="col-md-6"></div>
			<div class="col-md-6">
				<table class="table">
					<caption>
						<strong>cfj]bssf], </strong>
					</caption>
					<tbody>
						<tr>
							<td colspan="2">b:tvt M</td>
							
						</tr>
						<tr>
							<td colspan="2" class="nep">k"/f gfd, y/ M <small> ${sessionScope.userDetail.name }</small></td>
							
						</tr>
						<tr>
							<td colspan="2">ldlt</td>
							
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		</div>
	</form>
	<script>

		$("#ad_no").blur(function()
				{
				var advertiseno=$(this).val();
				var dataString = 'advertiseno='+ advertiseno;
				$.ajax
				({
				type: "POST",
				url: "../reg/ad_no_blur",
				data: dataString,
				cache: false,
				success: function(html)
				{
				alert("fds");
				} 
				});
				});
				
	
	</script>
</body>
</html>