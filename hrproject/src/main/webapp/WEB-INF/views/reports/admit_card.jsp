	<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<jsp:include page="../include.jsp"></jsp:include>
<spring:url value="/reg/next" var="formUrl"></spring:url>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
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

page {
	background: white;
	display: block;
	margin: 0 auto;
	margin-bottom: 0.5cm;
	box-shadow: 0 0 0.5cm rgba(0, 0, 0, 0.5);
}

page[size="A4"] {
	width: 21cm;
	height: 29.7cm;
}

@media print {
	body, page {
		margin: 0;
		box-shadow: 0;
	}
}

@page {
	size: auto; /* auto is the current printer page size */
	margin: 0mm; /* this affects the margin in the printer settings */
}
</style>
</head>
<body class="background">
<div>
<a class="btn btn-success" onClick="printDiv('printdiv')">Print</a>

</div>
<page size="A4">
<div class="col-md-12" id="printdiv">
	<div class="col-md-4">
		<div class="col-md-2"></div>
		<div class="col-md-2">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png">
		</div>
	</div>
	<div class="col-md-4" style="text-align: center; font-size:180%;">s[lif ljsf; a}+s ln=<br>
	k|j]zkq</div>
	<div class="col-md-2"></div>
	
	<!-- <div class="col-md-2" style="height:150px;border:1px solid black"> -->
	
	<div class="div-square" align="center">
				<!-- <div class="pull-right" style="width:30%;height:150px;border:1px solid black"> -->
				<img src="data:image/png;base64,${sessionScope.userDetail.image }" style="height:100px;width:100px;" /> 
				
				
					<!-- kf;kf]6{     ;fOhsf] k"/f   d'vfs[lt   k'/} b]lvg]   t:jL/   oxf+ 6f+:g]  /  t:jL/  /  kmf/fddf   kg]{   u/L   pDd]bjf/n]      ;xL      ug]{ .   -->
				</div>
	
	
	
	<!-- </div> -->

<div class="col-md-12">
<div class="col-md-2"></div>
	<div class="col-md-4">
		  s_ v'NNff k|ltof]lutftkm{  
	</div>
	<div class="col-md-4">
	      v_ ;dfj]zLtkm{    
	</div>
	<div class="col-md-2"></div>
</div>
<div class="col-md-12">
<div class="col-md-2"></div>
<div class="col-md-8">
	<table class="table">
	<caption>k/LIffyL{n] eg]{ </caption>
		<tbody>
		<tr>
			<td>-s_ gfd, y/ M ${sessionScope.userDetail.name }</td>
			<td>-!_ dlxnf</td>
		</tr>
		<tr>
			<td>-v_ lj1fkg gDa/ M <span class="nep1">${sessionScope.userDetail.advertiseno }</span></td>
			<td>-@_ cflbjf;L<span>/</span>hghflt</td>
		</tr>
		<tr>
			<td>-u_ kb M ${sessionScope.vacancy.postnp }</td>
			<td>-#_ dw];L</td>
		</tr>
		<tr>
			<td>-3_ ;]jf M ${sessionScope.vacancy.servicenp }</td>
			<td>-$_ blnt</td>
		</tr>
		<tr>
			<td>-ª_ ;d"x M ${sessionScope.vacancy.groupnp }</td>
			<td>-%_ ckf+u</td>
		</tr>
		<tr>
			<td>-5_ k/LIff s]Gb M</td>
			<td>-^_ lk5l8Psf] If]q</td>
		</tr>
		<tr>
			<td colspan="2">-h_ k/LIffyL{sf] b:tvt gd"gf M</td>
		</tr>
		</tbody>
	</table>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="col-md-12">
a}+ssf] ;DalGwt sd{rf/Ln] eg]{<br>
o; a}+saf6  ldlt M  df<span>/</span>b]lv  lnOg]  pQm  kbsf]  k/LIffdf  tkfO{nfO{  lgDg  s]Gb|af6  ;lDdlnt  x'g  cg'dlt  lbOPsf]  5  .  lj1fkgdf  tf]lsPsf]  zt{  gk'u]sf]  7x/  ePdf  hg';'s} cj:yfdf klg of] cg'dlt /2 x'g ;Sg]5 . 
</div>
<div class="col-md-12">
<div class="col-md-4">k/LIff s]Gb| M</div>
<div class="col-md-4">/f]n g+ M</div>

</div>
<br>
<br>
<div class="col-md-12">
<p class="pull-right">clws[tsf] b:tvt</p>
</div>
<div>
b|i6Jo M s[kof k5fl8 x]g'{xf 
</div>
</div>
</page>
<script type="text/javascript">
function printDiv(divName) {
	var printContents = document.getElementById(divName).innerHTML;
	var originalContents = document.body.innerHTML;
	document.body.innerHTML = printContents;
	window.print();
	document.body.innerHTML = originalContents;
}

</script>
</body>

</html>