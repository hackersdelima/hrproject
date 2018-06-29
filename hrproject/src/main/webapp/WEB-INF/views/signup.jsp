<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head><title>ADBL Signup</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css" type="text/css">
    <style>
     	table tr td{
    	 padding-bottom: 1em;} 
    	 

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
.nep {
	font-family: myFirstFont;
	color: #344c4c;
}

/* input, .eng, span {
	font-family: arial;
} */
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
    
    <body style="background-color: mediumaquamarine;">
    	<div class="col-md-6 col-centered" style="text-align: center;padding-bottom: 10px;">
    		<img src="${pageContext.request.contextPath}/resources/images/adbl-logo.png" alt="logo" class="img-responsive" />
    		
    		<h4>SIGNUP FORM</h4>
    		<hr>
    		
    		<spring:url value="/signup_review" var="formUrl" />
    		
    		<form:form cssClass="login-form"  action="${formUrl }" method="POST" modelAttribute="user">
    		<table style="width:80%; margin:auto;">
    		<tr>
    				<td colspan="2"><label for="ad_no">Advertise No</label></td>
    				<td><form:select path="ad_no" cssClass="form-control" id="ad_no" >
    				<option value="${sessionScope.user.ad_no }" selected>${sessionScope.user.ad_no }</option>
    				<c:forEach items="${ad_nos }" var="a">
    					<option  value="${a.advertiseno }">${a.advertiseno }</option>
    				</c:forEach>
    				</form:select></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="name">Name In Nepali Unicode</label></td>
    				 <td><form:input path="name" cssClass="uname" id="name" placeholder="Devnagari unicode" value="${sessionScope.user.name }"/></td> 
    			
    			
    			
    			</tr>
    			   	<tr>
    				<td colspan="2"><label for="name">Name in English</label></td>
    				<td><form:input path="name1" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			
    			</tr>
    			
    			  	<tr>
    				<td colspan="2"><label for="name">Father</label></td>
    				<td><form:input path="father" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr>
   			  	<tr>
    				<td colspan="2"><label for="name">Mother</label></td>
    				<td><form:input path="mother" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr> 		
   			  	<tr>
    				<td colspan="2"><label for="name">Spouse</label></td>
    				<td><form:input path="spouse" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr> 
   			  	<tr>
    				<td colspan="2"><label for="name">Permanent Address</label></td>
    				<td><form:input path="permanentaddress" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr> 
   			  	<tr>
    				<td colspan="2"><label for="name">Temporary Address</label></td>
    				<td><form:input path="tempaddress" cssClass="uname" id="name" placeholder="Enter Name" value="${sessionScope.user.name }"/></td>
    			</tr>     			    			
    			  			
    			<tr>
    				<td colspan="2"><label for="citizenship-no">Citizenship No</label></td>
    				<td><form:input path="citizenshipno" cssClass="uname" id="citizenship-no" placeholder="Enter Citizenship No" value="${sessionScope.user.citizenshipno }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="phone-no">Phone/Mobile Number</label></td>
    				<td><form:input path="phonenumber" cssClass="uname" id="phone-no" placeholder="Enter Phone Number" value="${sessionScope.user.phonenumber }"/></td>
    			</tr>
 
    			<tr>
    				<td colspan="2"><label for="phone-no">E_mail</label></td>
    				<td><form:input path="email" cssClass="uname" id="email" placeholder="Enter Email" value="${sessionScope.user.email }"/></td>
    			</tr>
   			   			<tr>
    				<td colspan="2"><label for="phone-no">Date of birth(BS YYYYMMDD)</label></td>
    				<td><form:input path="dob" cssClass="uname" id="name" placeholder="Enter Date of birth in BS" value="${sessionScope.user.phonenumber }"/></td>
    			</tr> 
    			<tr>
    				<td colspan="2"><label for="user-name">Age Year</label></td>
    				<td><form:input path="ageyr" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>  
    			<tr>
    				<td colspan="2"><label for="user-name">Age Month</label></td>
    				<td><form:input path="agemth" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>
		<tr>
    				<td colspan="2"><label for="user-name">Age day</label></td>
    				<td><form:input path="ageday" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>   
 		<tr>
    				<td colspan="2"><label for="user-name">Last passed Exam</label></td>
    				<td><form:input path="lastpassedexam" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>   			  			 		  			   			
 		<tr>
    				<td colspan="2"><label for="user-name">Last exam passed Date BS</label></td>
    				<td><form:input path="passeddatebs" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>  
		<tr>
    				<td colspan="2"><label for="user-name">Last exam passed Date AD</label></td>
    				<td><form:input path="passeddatead" cssClass="uname" id="name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr> 
 
    			<tr>
    				<td colspan="2"><label for="user-name">Username</label></td>
    				<td><form:input path="username" cssClass="uname" id="user-name" placeholder="Enter Username" value="${sessionScope.user.username }"/></td>
    			</tr>
    			<tr>
    				<td colspan="2"><label for="user-name">Password</label></td>
    				<td><form:input path="password" cssClass="uname" id="password" placeholder="Enter Password" value="${sessionScope.user.password }"/></td>
    			</tr>
    			<tr>
    				<td><a href="<spring:url value="/"/>" style="font-size: 80%">Already a member? Login</a></td>
    				<td><input type="submit" class="form-control pull-right" value="Next"></td>
    			</tr>
    			
    		</table>
	   		</form:form>
	    </div>
    </body>
</html>
 