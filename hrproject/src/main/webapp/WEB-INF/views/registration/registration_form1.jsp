<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="../include.jsp"></jsp:include>
<spring:url value="/reg/firstForm" var="previousUrl"></spring:url>
<spring:url value="/reg/thirdForm" var="nextUrl"></spring:url>
<html>
<head>
<style>
@font-face {
	font-family: myFirstFont;
	src: url(${pageContext.request.contextPath}/resources/fonts/preeti.TTF);
}

body, .nep {
	font-family: myFirstFont;
	color: #344c4c;
}

input, .eng, span, select {
	font-family: arial;
}

input, select {
	border: 1px solid #94b8b8;
	padding: 3px 8px;
	font-size: 80%;
	color: #3d5c5c;
}

body {
	font-size: 180%;
}

caption {
	font-weight: bold;
	margin-top: 8px;
}
</style>
</head>
<body class="background container">
	<form method="post" action="${previousUrl }">
		<div class="form-group eng">
			<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
				<input type="submit" class="btn btn-success" id="previous"
					value="Previous"> <a
					href="<spring:url value="/reg/cancel"/>" class="btn btn-danger"
					type="button">Cancel</a>
				<button class="btn btn-primary" type="reset">Reset</button>
				<input type="submit" onclick="this.form.action='${nextUrl}'"
					class="btn btn-success" id="next" value="Next">
			</div>
		</div>
		<br> <br>
		<div class="col-md-12">
			<div class="col-md-2">
				<img
					src="${pageContext.request.contextPath}/resources/images/logo.png">
			</div>

			<div class="col-md-6">
				<p style="text-align: center; font-weight: bold;">
					cg';"rL ! <br>-bkmf !# sf] pkbkmf -!_ ;+u ;DalGwt_ <br>s[lif
					ljsf; a}+s ln= <br>b/vf:t kmf/fd <br> -v'Nnf
					k|ltof]lutfTds k/LIffsf nflu_
				</p>
			</div>
			<div class="col-md-4">
				<div class="pull-right"
					style="width: 50%; height: 150px; border: 1px solid black">
					kf;kf]6{ ;fOhsf] k"/f d'vfs[lt k'/} b]lvg] t:jL/ oxf+ 6f+:g] /
					t:jL/ / kmf/fddf kg]{ u/L pDd]bjf/n] ;xL ug]{ .</div>

			</div>
		</div>
		<div class="col-md-12">
			<table class="table" style="width: 30%">
				<caption>
					<strong>a}+s k|of]hgsf] nflu</strong>
				</caption>
				<tbody>
					<tr>
						<td colspan="2">b/vf:t btf{ g+= <span>:</span></td>
						<td class="eng">${sessionScope.registration.reg_no }</td>
					</tr>
					<tr>
						<td colspan="2">btf{ ldlt <span>:</span></td>
						<td class="eng">${sessionScope.registration.reg_date}</td>
					</tr>
					<tr>
						<td colspan="2">lj1fkg g+ <span>:</span></td>
						<td class="eng">${sessionScope.userDetail.ad_no}</td>
					</tr>
					<tr>
						<td colspan="2">/f]n g+</td>
						<td><input type="text" name="roll_no"
							value="${sessionScope.registrationnext.roll_no }">
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-12">
			<div>
				b/vf:t lbPsf] kb : ${sessionScope.vacancy.postnp }
			</div>
		</div>
		<div class="col-md-12">
			v'NNff k|ltof]lutftkm{ <span>:
				${sessionScope.registration.khulla_pratiyogita }</span> ;dfj]zLtkm{ <span>:
				${sessionScope.registration.samabesi }</span>

		</div>
		<br>
		<div class="col-md-12">
			<table class="table">
				<caption>-s_ j}olQms ljj/0f M cfˆgf] ;Dk"0f{ j}olQms
					ljj/0f :ki6 a'lemg] cIf/df n]Vg'xf];</caption>
				<tr>
					<td>lj1fkg g+ M <span>${sessionScope.userDetail.ad_no }</span></td>
					<td>kb M ${sessionScope.vacancy.postnp }</td>
					<td>;]jf <input value="${sessionScope.registrationnext.sewa}"
						type="text" name="sewa"></td>
					<td>;d"x <input value="${sessionScope.registrationnext.group}"
						type="text" name="group"></td>
				</tr>
				<tr>
					<td>>]0fL <span>/</span>tx M <input
						value="${sessionScope.registrationnext.level}" type="text"
						name="level"></td>
					<td colspan="2">k/LIff s]Gb| M <input
						value="${sessionScope.registrationnext.exam_center}" type="text"
						name="exam_center" size="40"></td>
				</tr>
				<tr>
					<td rowspan="2">pDd]bjf/sf] k"/f gfd, y/ M <span>${sessionScope.registration.full_name }</span></td>
					<td>b]jgfu/Ldf M</td>
					<td colspan="2"><input
						value="${sessionScope.registrationnext.full_name_nep}" type="text"
						class="nep" name="full_name_nep"></td>

				</tr>
				<tr>
					<td>c+u|]hL 7"nf] cIf/df</td>
					<td colspan="2"><input
						value="${sessionScope.registrationnext.full_name_capital}"
						type="text" name="full_name_capital"
						style="text-transform: uppercase"></td>
				</tr>
				<tr>
					<td rowspan="2">:yfoL 7]ufgf M <span>${sessionScope.registration.permanent_address }</span></td>
					<td>hNnf M <input
						value="${sessionScope.registrationnext.permanent_dist}"
						type="text" name="permanent_dist"></td>
					<td>g=kf=<span>/</span>uf=lj=;= M <input
						value="${sessionScope.registrationnext.permanent_vdcmun}"
						type="text" name="permanent_vdcmun"></td>
					<td>j8f g+ M <input
						value="${sessionScope.registrationnext.permanent_wardno}"
						type="text" name="permanent_wardno" size="3">
					</td>
				</tr>
				<tr>
					<td>6f]n M <input
						value="${sessionScope.registrationnext.permanent_tole}"
						type="text" name="permanent_tole">
					</td>
					<td>x'nfs M <input
						value="${sessionScope.registrationnext.permanent_hulak}"
						type="text" name="permanent_hulak"></td>
					<td>kmf]g g+ M <input
						value="${sessionScope.registrationnext.permanent_phone}"
						type="text" name="permanent_phone" size="10" maxlength="10"></td>
				</tr>
				<tr>
					<td>kqfrf/ ug]{ 7]ufgf M</td>
					<td colspan="3"><input
						value="${sessionScope.registrationnext.patrachar_address}"
						type="text" name="patrachar_address" size="40"></td>
				</tr>
				<tr>
					<td rowspan="3">pDd]bjf/sf]</td>
					<td>afa'sf] gfd, y/ M <span>${sessionScope.registration.father_name }</span></td>
					<td>gful/stf M <input
						value="${sessionScope.registrationnext.father_cit}" type="text"
						name="father_cit"></td>
				</tr>
				<tr>
					<td>cfdfsf] gfd y/ M <span>${sessionScope.registration.mother_name }</span></td>
					<td>gful/stf M <input
						value="${sessionScope.registrationnext.mother_cit}" type="text"
						name="mother_cit"></td>
				</tr>
				<tr>
					<td>afh]sf] gfd, y/ M <span>${sessionScope.registration.grandfather_name }</span></td>
					<td>gful/stf M <input value="${sessionScope.registrationnext.grandfather_cit}" type="text" name="grandfather_cit"></td>
				</tr>
				<tr>
					<td>ljjflxtsf] lgldQ</td>
					<td>klt<span>/</span>kTgLsf] k"/f gfd, y/ M <input value="${sessionScope.registrationnext.spouse_name}" type="text" name="spouse_name"></td>
					<td>gful/stf M <input
						value="${sessionScope.registrationnext.spouse_cit}" type="text"
						name="spouse_cit"></td>
				</tr>
				<tr>
					<td rowspan="3">pDd]bjf/sf]</td>
					<td colspan="2">hGd ldlt M <span>${sessionScope.registration.birth_date }</span><br>
						O:jL ;g\df M <input
						value="${sessionScope.registrationnext.birth_dateen }" type="text"
						name="birth_dateen" size="10"></td>
					<td>= xfnsf] pd]/ M aif{ <span>${sessionScope.registration.cur_age_yr }</span>
						dlxgf <span> ${sessionScope.registration.cur_age_month } </span>
						lbg <span>${sessionScope.registration.cur_age_days }</span></td>
				</tr>
				<tr>
					<td>gful/stf M <input type="text" name="cit"></td>
					<td>ln+u M <select name="sex">
							<option value="${sessionScope.registrationnext.sex }"></option>
							<option value="m">Male</option>
							<option value="f">Female</option>
							<option value="o">Other</option>
					</select></td>
					<td>wd{ M <input type="text" name="religion"></td>
				</tr>
				<tr>
					<td>dft[efiff M <input type="text" name="mother_language"></td>
					<td>x'lnof M <input type="text" name="appearance"></td>
				</tr>
			</table>

		</div>
		<div class="col-md-12" style="overflow-x: scroll;">
			<table class="table">
				<caption>
					<strong>-v_ z}lIfs of]Uotf</strong>
				</caption>
				<thead>
					<tr>
						<th>cWoog u/]sf] ;+:yf / b]zsf] gfd</th>
						<th>pQL0f{ u/]sf] k/LIff</th>
						<th>k/LIff pQL0f{ u/]sf] ;fn</th>
						<th>>]0fL<span>/</span>tx
						</th>
						<th>s'n k|fKtf+s</th>
						<th>d'Vo ljifo</th>
						<th>s}lkmot</th>
					</tr>
				</thead>
				<tbody>
					
							<%
								for (int i = 1; i <= 3; i++) {
							%>
							<tr>
								<td><input type="text" size=auto
									name="education.institute_name"/></td>
								<td><input type="text" size=auto name="education.exam_name" /></td>
								<td><input type="text" size=auto
									name="education.completed_year" /></td>
								<td><input type="text" size=auto name="education.level" /></td>
								<td><input type="text" size=auto
									name="education.marks_obtained" /></td>
								<td><input type="text" size=auto
									name="education.main_subject" /></td>
								<td><input type="text" size=auto name="education.kaifiyat" /></td>
							</tr>
							<%
								}
							%>
						
				</tbody>
			</table>
		</div>
		<div class="col-md-12">
			<table class="table">
				<caption>-u_ tfnLdsf] ljj/0f M</caption>
				<thead>
					<tr>
						<th>tfnLd lbg] ;+:yfsf] gfd / 7]ufgf</th>
						<th>k|df0fkqsf] gfd / lsl;d</th>
						<th>tflnd lnPsf] ;fn</th>
						<th>tflndsf] cjlw</th>
						<th>ljifo</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (int i = 1; i <= 3; i++) {
					%>
					<tr>
						<td><input type="text" size=auto
							name="training.institute_name" /></td>
						<td><input type="text" size=auto
							name="training.certificate_name" /></td>
						<td><input type="text" size=auto
							name="training.training_year" /></td>
						<td><input type="text" size=auto
							name="training.training_period" /></td>
						<td><input type="text" size=auto
							name="training.training_subject" /></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>

		</div>
		<div class="col-md-12" style="overflow-x: scroll;">
			<table class="table">
				<caption>-3_ cg'ej M jxfn /x]sf] sd{rf/Ln] clgjfo{?kdf
					eg'{kg]{ ;/sf/L jf ;fj{hlgs ;+:yfdf sfd u/]sf] ljj/0f</caption>
				<thead>
					<tr>
						<th>sfof{no</th>
						<th>kb</th>
						<th>;]jf<span>/</span>+;d"x
						</th>
						<th>>]0f<span>/</span>tx
						</th>
						<th>:yfoL, c:yfoL, s/f/ jf Hofnfbf/L</th>
						<th>s'g ldlt b]lv</th>
						<th>s'g ldlt ;Dd</th>
						<th>of] kbdf /x]/ u/]sf] sfdsf] ljj/0f</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" size=auto name="experience.institute" /></td>
						<td><input type="text" size=auto name="experience.post" /></td>
						<td><input type="text" size="4" name="experience.group" /></td>
						<td><input type="text" size=auto name="experience.level" /></td>
						<td><input type="text" size=auto name="experience.category" /></td>
						<td><input type="text" size=auto name="experience.from_date" /></td>
						<td><input type="text" size=auto name="experience.to_date" /></td>
						<td><input type="text" size=auto
							name="experience.work_detail" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-12">
			<div class="col-md-6">
				<table class="table">
					<caption>ljj/0f eg]{ sd{rf/Lsf]</caption>
					<tbody>
						<tr>
							<td colspan="2">b:tvt</td>
							<td><input
								value="${sessionScope.registrationnext.inputter_signature}"
								type="text" name="inputter_signature"></td>
						</tr>
						<tr>
							<td colspan="2">gfd y/</td>
							<td><input
								value="${sessionScope.registrationnext.inputter_full_name}"
								type="text" name="inputter_full_name"></td>
						</tr>
						<tr>
							<td colspan="2">ldlt</td>
							<td><input
								value="${sessionScope.registrationnext.input_date}" type="text"
								size="10"
								pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])"
								name="input_date"></td>
						</tr>
						<tr>
							<td colspan="2">kmf]g g+=</td>
							<td><input
								value="${sessionScope.registrationnext.inputter_phone}"
								type="text" pattern="[0-9]{10}" size="10" name="inputter_phone"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<table class="table">
					<caption>sfof{nodf /x]sf] ljj/0faf6 pko'{Qm ljj/0f 7Ls 5
						egL k|dfl0ft ug]{ sfof{no k|d'vsf</caption>
					<tbody>
						<tr>
							<td colspan="2">b:tvt</td>
							<td><input
								value="${sessionScope.registrationnext.authorizer_signature}"
								type="text" name="authorizer_signature"></td>
						</tr>
						<tr>
							<td colspan="2">gfd y/</td>
							<td><input
								value="${sessionScope.registrationnext.authorizer_full_name}"
								type="text" name="authorizer_full_name"></td>
						</tr>
						<tr>
							<td colspan="2">ldlt</td>
							<td><input
								value="${sessionScope.registrationnext.authorized_date}"
								type="text" size="10"
								pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])"
								name="authorized_date"></td>
						</tr>
						<tr>
							<td colspan="2">sfof{nosf] 5fk</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-12">d}n] o; b/vf:tdf v'nfPsf ;Dk"0f{ ljj/0fx¿
			;To 5g\ . k |rlnt sfg"g adf]lhd ;/sf/L÷a}+ssf] ;]jfsf] lgldQ cof]Uo
			7xl/g] u/L ;]jfaf6 avf{:t ePsf] 5}g / d]/f] lgo'lQmsf] ;DaGwdf c;/
			kg{ ;Sg] sfdsf] cg'ej, j}olQms ljj/0f, z}lIfs of]Uotf cflbsf ;DaGwdf
			s'g} s'/f 9f+6]sf] jf n'sfPsf] 5}g . s'g} s'/f 9f+6]sf] jf n'sfPsf]
			7x/]df k|rlnt sfg"g adf]lhd ;xg]5', a'emfpg]5' . ;fy} s[lif ljsf;
			a}+s ln=sd{rf/L ;]jf zt{;DjGwL ljlgodfjnL, kbk"lt{ lgb]{lzsf @)^^ /
			k/LIffyL{n] kfng ug'{kg]{ zt{x¿ ljk/Lt x'g] u/L k/LIff ejgleq s'g}
			sfo{ u/]df tTsfn k/LIffaf6 lgisfzg ug]{, jf kbk"lt{ ;ldltaf6 d]/f]
			;Dk"0f{ k/LIff /2 ug]{ lg0f{o ePdf d]/f] k"0f{ d~h'/L 5 . pDd]bjf/n]
			kfng ug'{ kg]{ egL o; b/vf:t kmf/fdsf k[i7x¿df plNnlvt ;a} lgb]{zgx¿
			d}n] /fd|/L k9]+ / d tL ;a}sf] kfng ug{ d~h'/ ub{5' .</div>
		<div class="col-md-12">
			<div class="col-md-4">
				<table class="table">
					<caption>NofKr] ;xL5fk</caption>
					<tbody>
						<tr>
							<td rowspan="4">bfofF</td>
							<td rowspan="4">afofF</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<table class="table  pull-right" style="width: 60%">
					<tbody>
						<tr>
							<td colspan="3">pDd]bjf/sf] b:tvt</td>
						</tr>
						<tr>
							<td>ldlt M <input
								value="${sessionScope.registrationnext.form_date}" type="text"
								name="form_date"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-12">
			<table class="table" style="width: 80%">
				<caption>a}+ssf] ;DalGwt sd{rf/Ln] eg]{</caption>
				<tbody>
					<tr>
						<td colspan="1">k/LIff b:t'/ ¿=</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.exam_fee}" type="text"
							name="exam_fee"></td>
						<td colspan="1">ef}r/<span>/</span>/l;b g+= / ldlt
						</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.voucher_no}" type="text"
							size="10" name="voucher_no"><br> <br> <input
							value="${sessionScope.registrationnext.voucher_date}" type="text"
							size="10" placeholder="2074-01-01" name="voucher_date"></td>
					</tr>
					<tr>
						<td colspan="1">k|ltlnlkx¿sf] ;+nUg k|lt</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.pratilipi_sanglagna_prati}"
							type="text" name="pratilipi_sanglagna_prati"></td>
						<td colspan="1">b/vf:t a'‰g] b:tvt / ldlt</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.darkhasta_signature}"
							type="text" name="darkhasta_signature"><br> <br>
							<input value="${sessionScope.registrationnext.darkhasta_date}"
							type="text" name="darkhasta_date" size="10"
							placeholder="2074-01-01"></td>
					</tr>
					<tr>
						<td colspan="1">= b/vf:t :jLs[t<span>/</span>c:jLs[t ug]{sf]
							b:tvt
						</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.darkhasta_authorizer_signature}"
							type="text" name="darkhasta_authorizer_signature"></td>
						<td colspan="1">ldlt</td>
						<td colspan="1"><input
							value="${sessionScope.registrationnext.darkhasta_authorized_date}"
							type="text" name="darkhasta_authorized_date"
							placeholder="2074-01-01"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-12">
			b|i6Jo b/vf:t;fy lj1fkgdf pNn]lvt sfuhftsf cltl/Qm lgDg sfuhftx¿
			clgjfo{ ;+nUg x'g'kg]{5 M
			<ul>
				<li>!_ pd]/ v'n]sf] k|df0fkqsf] k|dfl0ft k|ltlnlk .</li>
				<li>@_ g]kfnL gful/stfsf] k|df0fkqsf] k|ltlnlk .</li>
				<li>#_ lj1fkg ePsf] kbsf] nflu tf]lsPsf] Go"gtd z}lIfs
					of]Uotfsf] k|df0fkqsf] k|df</li>
				<li>$_ dfly #_ dxndf plNnlvt ljj/0f k|dfl0ft sfuhftsf] k|dfl0ft
					k|ltlnlk ;+nUg ug'{ kg]{5 .</li>
			</ul>
		</div>
	</form>
</body>
</html>
